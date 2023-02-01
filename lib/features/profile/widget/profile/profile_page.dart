import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/widget/refresh_indicator_widget.dart';
import 'package:thrive_mobile_app/features/address/provider/address_validation_provider.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';
import 'package:thrive_mobile_app/app/routes/route_paths.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import 'package:thrive_mobile_app/app/widget/button_widget.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/widget/shimmer_widget.dart';
import 'package:thrive_mobile_app/app/widget/error_retry_widget.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/features/profile/provider/profile_provider.dart';
import 'package:thrive_mobile_app/features/profile/widget/profile/profile_body_widget.dart';
import 'package:thrive_mobile_app/features/profile/model/profile_response/profile_response.dart';
import 'package:thrive_mobile_app/features/profile/widget/update_password/update_password_label_widget.dart';
import 'package:thrive_mobile_app/features/profile/provider/validation_provider/profile_validation_provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  Future<void> _callProfileApi(WidgetRef ref) async {
    ref.read(profileStateProvider.notifier).profileInfo();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<ProfileResponse>(profileStateProvider, (prev, next) {
      final error = next.message;

      if (next.success == false &&
          !error.isBlank &&
          !next.isLoading &&
          !next.isImageUploading) {
        error.showSnackBar(context);
      }
    });

    ref.watch(profileUpdateRequestProvider);
    final state = ref.watch(profileStateProvider);
    final updateRequestNotifier =
        ref.read(profileUpdateRequestProvider.notifier);

    final user = state.payload?.user;
    final userDetails = state.payload?.userDetails;
    final address = userDetails?.address;

    return Scaffold(
      appBar: AppBarWidget(
        title: LocaleKeys.profile.tr(),
        isMenuIcon: true,
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: RefreshIndicatorWidget(
          onRefresh: () => _callProfileApi(ref),
          child: Column(
            children: [
              if (state.isLoading && state.payload == null) ...[
                const ShimmerWidget(
                  widget: ProfileBodyWidget(
                    isShimmerLoading: true,
                  ),
                )
              ] else ...[
                if (state.success == false &&
                    !state.message.isBlank &&
                    state.payload == null) ...[
                  ErrorRetryWidget(
                    state.message!,
                    onPressed: () => _callProfileApi(ref),
                  ),
                ] else ...[
                  ProfileBodyWidget(
                    user: user,
                    userDetails: userDetails,
                    isShimmerLoading: false,
                    isImageUploading: state.isImageUploading,
                    onChangedName: (value) =>
                        updateRequestNotifier.setName(value),
                    onChangedPhone: (value) =>
                        updateRequestNotifier.setPhone(value),
                    onChangedWebsite: (value) =>
                        updateRequestNotifier.setWebsite(value),
                    onPressedCameraIcon: state.isImageUploading
                        ? null
                        : () => _showImageDialog(context, ref),
                  ),
                  ButtonWidget(
                    text: LocaleKeys.update.tr(),
                    isLoading: state.isLoading,
                    onPressed: updateRequestNotifier.isInvalid()
                        ? null
                        : () => ref
                            .read(profileStateProvider.notifier)
                            .updateProfileInfo(),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  InkWell(
                    onTap: () {
                      final requestNotifier =
                          ref.read(addressRequestProvider.notifier);

                      if (address != null) {
                        requestNotifier.setAddress(address);
                        ref.watch(addressRequestProvider);
                        context.push(routeAddress);
                      } else {
                        requestNotifier.setAddress(null);
                        context.push(routeCreateUpdateAddress);
                      }
                    },
                    child: UpdatePasswordLabelWidget(
                      text: address != null
                          ? LocaleKeys.address.tr()
                          : LocaleKeys.createAddress.tr(),
                      icon: Icons.arrow_right_sharp,
                    ),
                  ),
                  InkWell(
                    onTap: () => context.push(routeUpdatePassword),
                    child: UpdatePasswordLabelWidget(
                      text: LocaleKeys.changePassword.tr(),
                      icon: Icons.arrow_right_sharp,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ],
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showImageDialog(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(profileStateProvider.notifier);
    final title = LocaleKeys.updateYourProfilePicture.tr();
    final body =
        "${LocaleKeys.alertWarning.tr()} ${LocaleKeys.updateYourProfilePicture.tr().toLowerCase()}?";

    return showDialog(
      context: context,
      builder: ((buildContext) {
        return SimpleDialog(
          children: [
            SimpleDialogOption(
              child: TextWidget(
                LocaleKeys.chooseFromGallery.tr(),
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                pickOrGetImage(
                  context,
                  ImageSource.gallery,
                ).then((path) {
                  if (!path.isBlank) {
                    showAlertDialog(
                      context,
                      title,
                      body: body,
                      confirmText: LocaleKeys.update.tr(),
                      clickEvent: (onConfirm, onCancel) {
                        if (onConfirm) {
                          notifier.uploadProfileImage(path!);
                        }
                      },
                    );
                  }
                });
              },
            ),
            SimpleDialogOption(
              padding: EdgeInsets.only(top: 8, bottom: 10),
              child: TextWidget(
                LocaleKeys.takePhoto.tr(),
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                pickOrGetImage(
                  context,
                  ImageSource.camera,
                ).then((path) {
                  if (!path.isBlank) {
                    showAlertDialog(
                      context,
                      title,
                      body: body,
                      confirmText: LocaleKeys.update.tr(),
                      clickEvent: (onConfirm, onCancel) {
                        if (onConfirm) {
                          notifier.uploadProfileImage(path!);
                        }
                      },
                    );
                  }
                });
              },
            ),
            const Divider(
              thickness: 1,
            ),
            SimpleDialogOption(
              padding: EdgeInsets.zero,
              child: Text(
                LocaleKeys.cancel.tr(),
                textAlign: TextAlign.center,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      }),
    );
  }
}
