import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/features/doc/model/doc_page_data.dart';
import 'package:thrive_mobile_app/features/doc/provider/doc_provider.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';
import '../../../../app/routes/route_paths.dart';
import '../../../../app/widget/refresh_indicator_widget.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import 'package:thrive_mobile_app/app/widget/shimmer_widget.dart';
import 'package:thrive_mobile_app/features/error/paginated_error_widget.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/features/opportunity/widget/opportunity_list_view_widget.dart';

import '../../model/doc/doc.dart';
import 'doc_list_view_widget.dart';

class DocPage extends ConsumerStatefulWidget {
  const DocPage(this.docPageData, {Key? key}) : super(key: key);

  final DocPageData docPageData;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DocPageState();
}

class _DocPageState extends ConsumerState<DocPage> {
  late final Debouncer _debouncer;
  late final ScrollController _scrollController;

  @override
  void initState() {
    _debouncer = Debouncer();
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _debouncer.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final docType = widget.docPageData.docType;

    ref.listen<PaginationState>(docStateProvider(docType), (prev, next) {
      if (next.isPaginatedError) {
        next.error.showSnackBar(context);
      }
    });

    final _docState = ref.watch(docStateProvider(docType));
    final _docNotifier =
        ref.read(docStateProvider(widget.docPageData.docType).notifier);
    _docNotifier.scrollListener(_scrollController);

    return Scaffold(
      appBar: AppBarWidget(
        title: widget.docPageData.title,
        actionWidgets: [
          if (widget.docPageData.fileUploadType != null) ...[
            InkWell(
              onTap: () {
                context.hideSnackBar();
                context.push(
                  routeUploadDoc,
                  extra: widget.docPageData,
                );
              },
              child: Padding(
                padding: EdgeInsets.only(
                  left: 5,
                  right: 16,
                ),
                child: const Icon(
                  Icons.file_upload_outlined,
                  size: 26,
                ),
              ),
            ),
          ],
        ],
      ),
      body: RefreshIndicatorWidget(
        onRefresh: () => _docNotifier.getPaginatedData(
          fromRefresh: true,
        ),
        child: _docState.isLoading
            ? const ShimmerWidget(
                widget: OpportunityListViewWidget(),
              )
            : _docNotifier.isErrorOccurred()
                ? PaginatedErrorWidget(
                    notifier: _docNotifier,
                    state: _docState,
                  )
                : DocListViewWidget(
                    docType: widget.docPageData.docType,
                    scrollController: _scrollController,
                    isFetchingNext: _docState.isFetchingNext,
                    docs: convertToDocData(_docState.datas),
                    deleteActionIndex: _docState.deleteActionIndex,
                    onTapDelete: (index, doc) {
                      showAlertDialog(
                        context,
                        LocaleKeys.delete.tr(),
                        confirmText: LocaleKeys.delete.tr(),
                        clickEvent: (onConfirm, onCancel) {
                          if (onConfirm) {
                            _docNotifier.deleteData(id: doc.id, index: index);
                          }
                        },
                      );
                    },
                    onPressed: (doc) {
                      final fileUrl = doc.dbFile?.fileUrl;

                      if (fileUrl.isValidImageUrl) {
                        showImageDialog(
                          context,
                          fileUrl,
                          showOpenOriginal: true,
                        );
                      } else {
                        openUrl(context, fileUrl);
                      }
                    },
                  ),
      ),
    );
  }
}
