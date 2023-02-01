import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/values/constants.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/widget/image_view_widget.dart';
import 'package:thrive_mobile_app/app/widget/bordered_text_widget.dart';
import 'package:thrive_mobile_app/app/widget/text_form_field_wiget.dart';
import 'package:thrive_mobile_app/app/widget/date_time_picker_widget.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/features/claim/provider/claim_provider.dart';
import 'package:thrive_mobile_app/app/widget/auto_complete_text_field_widget.dart';
import 'package:thrive_mobile_app/features/claim/provider/claim_validation_provider.dart';

import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import 'package:thrive_mobile_app/app/widget/button_widget.dart';
import 'package:thrive_mobile_app/features/home/model/product/product.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/features/policy/model/policy/policy.dart';
import 'package:thrive_mobile_app/features/carrier/model/carrier/carrier.dart';
import 'package:thrive_mobile_app/features/home/provider/product_provider.dart';
import 'package:thrive_mobile_app/features/carrier/provider/carrier_provider.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';

import '../../../policy/provider/policy_provider.dart';

class CreateClaimPage extends ConsumerWidget {
  CreateClaimPage({Key? key}) : super(key: key);

  final _policyController = TextEditingController();
  final _productController = TextEditingController();
  final _carrierController = TextEditingController();

  void clearTextControllerData() {
    _policyController.text = "";
    _productController.text = "";
    _carrierController.text = "";
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transparentColor = Colors.transparent;
    final typeOrSelect = LocaleKeys.typeOrSelectA.tr();
    final _attachmentPathState = ref.watch(claimAttachmentPathProvider);
    final _requestNotifier = ref.read(claimCreateRequestProvider.notifier);
    final _attachmentNotifier = ref.read(claimAttachmentPathProvider.notifier);

    ref.listen<PaginationState>(claimStateProvider, (prev, next) {
      if (!next.error.isBlank) {
        next.error.showSnackBar(context);
      }

      if (next.isCreateUpdating) {
        clearTextControllerData();
        context.pop();
      }
    });

    return WillPopScope(
      onWillPop: () async {
        clearTextControllerData();
        return true;
      },
      child: Scaffold(
        appBar: AppBarWidget(
          title: LocaleKeys.createClaim.tr(),
        ),
        body: InkWell(
          focusColor: transparentColor,
          hoverColor: transparentColor,
          splashColor: transparentColor,
          highlightColor: transparentColor,
          onTap: () => closeSoftKeyBoard(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                AutoCompleteTextFieldWidget(
                  label: LocaleKeys.product.tr(),
                  hint:
                      "$typeOrSelect ${LocaleKeys.product.tr().toLowerCase()}...",
                  controller: _productController,
                  onChanged: (value) => _requestNotifier.setProduct(null),
                  onSuggestionSelected: (suggestion) {
                    suggestion = (suggestion as Product);
                    _productController.text = suggestion.name;
                    _requestNotifier.setProduct(suggestion);
                  },
                  itemBuilder: (context, suggestion) {
                    return Padding(
                      padding: const EdgeInsets.all(14),
                      child: Text((suggestion as Product).name),
                    );
                  },
                  suggestionsCallback: (pattern) async {
                    final response = await ref
                        .read(productRepositoryProvider)
                        .getAllPaginatedProducts(0,
                            queryMap: {"name": pattern});

                    if (!response.datas.isBlank) {
                      return convertToProductDatas(response.datas);
                    } else {
                      if (response.error ==
                          LocaleKeys.internetConnectivityProblem.tr()) {
                        response.error.showSnackBar(context);
                      }

                      return [];
                    }
                  },
                ),
                AutoCompleteTextFieldWidget(
                  label: LocaleKeys.policyNo.tr(),
                  hint:
                      "$typeOrSelect ${LocaleKeys.policyNo.tr().toLowerCase()}...",
                  controller: _policyController,
                  onChanged: (value) => _requestNotifier.setPolicyNumber(null),
                  onSuggestionSelected: (suggestion) {
                    suggestion = (suggestion as Policy);
                    _policyController.text = suggestion.policyNumber ?? "";
                    _requestNotifier.setPolicyNumber(suggestion.policyNumber);
                  },
                  itemBuilder: (context, suggestion) {
                    return Padding(
                      padding: const EdgeInsets.all(14),
                      child: Text((suggestion as Policy).policyNumber ?? ""),
                    );
                  },
                  suggestionsCallback: (pattern) async {
                    final response = await ref
                        .read(policyRepositoryProvider)
                        .getAllPaginatedPolicy(0,
                            queryMap: {"policyNumber": pattern});

                    if (!response.datas.isBlank) {
                      return convertToPolicyData(response.datas);
                    } else {
                      if (response.error ==
                          LocaleKeys.internetConnectivityProblem.tr()) {
                        response.error.showSnackBar(context);
                      }

                      return [];
                    }
                  },
                ),
                AutoCompleteTextFieldWidget(
                  label: LocaleKeys.carrier.tr(),
                  hint:
                      "$typeOrSelect ${LocaleKeys.carrier.tr().toLowerCase()}...",
                  controller: _carrierController,
                  onChanged: (value) => _requestNotifier.setCarrierId(null),
                  onSuggestionSelected: (suggestion) {
                    suggestion = (suggestion as Carrier);
                    _carrierController.text = suggestion.name ?? "";
                    _requestNotifier.setCarrierId(suggestion.id.toString());
                  },
                  itemBuilder: (context, suggestion) {
                    return Padding(
                      padding: const EdgeInsets.all(14),
                      child: Text((suggestion as Carrier).name ?? ""),
                    );
                  },
                  suggestionsCallback: (pattern) async {
                    final response = await ref
                        .read(carrierRepositoryProvider)
                        .getAllPaginatedCarrier(0, queryMap: {"name": pattern});

                    if (!response.datas.isBlank) {
                      return convertToCarrierData(response.datas);
                    } else {
                      if (response.error ==
                          LocaleKeys.internetConnectivityProblem.tr()) {
                        response.error.showSnackBar(context);
                      }

                      return [];
                    }
                  },
                ),
                DateTimePickerWidget(
                  labelText: LocaleKeys.dateOfAccident.tr(),
                  text: ref.watch(claimCreateRequestProvider).dateOfAccident,
                  initialDate: DateTime(1999),
                  padding: const EdgeInsets.only(left: 5, top: 8, bottom: 8),
                  onChanged: (value, timestamp) {
                    _requestNotifier.setDateOfAccident(value);
                  },
                ),
                TextFormFieldWidget(
                  hint:
                      "${LocaleKeys.incident.tr()} ${LocaleKeys.description.tr()}",
                  textInputAction: TextInputAction.newline,
                  textInputType: TextInputType.multiline,
                  maxLines: 3,
                  onChanged: (String? value) {
                    _requestNotifier.setIncidentDescription(value);
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                if (_attachmentPathState.isBlank) ...[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      left: 16,
                      right: 16,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        pickFile(
                          context,
                          isPopNavigation: false,
                        ).then((paths) {
                          if (!paths.isBlank && !paths.first.isBlank) {
                            _attachmentNotifier.state = paths.first!;
                          }
                        });
                      },
                      child: BorderedTextWidget(
                        "Attach File 📎",
                        fontSize: 16,
                        borderRadius: 18,
                        color: colorWhite,
                        textAlign: TextAlign.start,
                        padding: EdgeInsets.fromLTRB(12, 6, 12, 6),
                        backgroundColor: colorPrimary.withOpacity(0.9),
                      ),
                    ),
                  ),
                ],
                if (!_attachmentPathState.isBlank) ...[
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 8,
                          left: 20,
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: colorGrey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: ImageViewWidget(
                          width: 100,
                          height: 100,
                          imageRadius: 3,
                          imageUrl: _getFileUrl(_attachmentPathState),
                          placeHolderIcon: Assets.icons.defaultIcon.path,
                          isLocalAsset:
                              !_pickedFileIsImage(_attachmentPathState),
                          isPickedImage:
                              _pickedFileIsImage(_attachmentPathState),
                        ),
                      ),
                      Positioned(
                        right: 3,
                        child: Container(
                          width: 25.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.25),
                              width: 1,
                            ),
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: IconButton(
                            padding: EdgeInsets.only(top: 1),
                            icon: const Icon(
                              Icons.close,
                              color: Colors.deepOrangeAccent,
                              size: 18,
                            ),
                            onPressed: () => _attachmentNotifier.state = null,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
                const SizedBox(
                  height: 20,
                ),
                Consumer(
                  builder: (context, ref, child) {
                    ref.watch(claimCreateRequestProvider);

                    return ButtonWidget(
                      text: LocaleKeys.create.tr(),
                      isLoading: ref.watch(claimStateProvider).isLoading,
                      onPressed: _requestNotifier.isInvalid()
                          ? null
                          : () {
                              final requestBody =
                                  ref.read(claimCreateRequestProvider).toJson();
                              requestBody[attachmentPath] =
                                  _attachmentNotifier.state;

                              ref
                                  .read(claimStateProvider.notifier)
                                  .createData(requestBody);
                            },
                    );
                  },
                ),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool _pickedFileIsImage(String? path) {
    // final path = ref.read(claimAttachmentPathProvider);

    if (path != null) {
      for (final type in imageTypes) {
        if (path.contains(type)) {
          return true;
        }
      }
    }

    return false;
  }

  String _getFileUrl(String? path) {
    // final path = ref.read(claimAttachmentPathProvider);

    if (path != null) {
      for (final type in imageTypes) {
        if (path.contains(type)) {
          return path;
        }
      }
    }

    return Assets.icons.docIcon.path;
  }
}
