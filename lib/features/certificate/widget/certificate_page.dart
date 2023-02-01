import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/features/doc/model/doc_page_data.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

import '../../../app/routes/route_paths.dart';
import '../../../app/values/app_types.dart';
import 'certificate_list_view_widget.dart';
import '../model/certificate/certificate.dart';
import '../provider/certificate_provider.dart';
import '../../../app/widget/appbar_widget.dart';
import '../../../app/widget/shimmer_widget.dart';
import '../../error/paginated_error_widget.dart';
import '../../../app/state/pagination/pagination_state.dart';
import '../../notification/widget/notification_list_view_widget.dart';
import 'package:thrive_mobile_app/features/policy/model/policy/policy.dart';

class CertificatePage extends ConsumerStatefulWidget {
  const CertificatePage({
    Key? key,
    this.policy,
  }) : super(key: key);

  final Policy? policy;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CertificatePageState();
}

class _CertificatePageState extends ConsumerState<CertificatePage> {
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
    ref.listen<PaginationState>(certificateStateProvider, (prev, next) {
      if (next.isPaginatedError) {
        next.error.showSnackBar(context);
      }
    });

    final _certificateState = ref.watch(certificateStateProvider);
    final _certificateNotifier = ref.read(certificateStateProvider.notifier);
    _certificateNotifier.scrollListener(_scrollController);

    return Scaffold(
      appBar: AppBarWidget(
        title: LocaleKeys.certificate.tr(),
      ),
      body: RefreshIndicator(
        onRefresh: () => _certificateNotifier.getPaginatedData(
          fromRefresh: true,
        ),
        child: _certificateState.isLoading
            ? const ShimmerWidget(
                widget: NotificationListViewWidget(),
              )
            : _certificateNotifier.isErrorOccurred()
                ? PaginatedErrorWidget(
                    notifier: _certificateNotifier,
                    state: _certificateState,
                  )
                : CertificateListViewWidget(
                    policy: widget.policy,
                    scrollController: _scrollController,
                    isFetchingNext: _certificateState.isFetchingNext,
                    certificates:
                        convertToCertificateData(_certificateState.datas),
                    onViewCertificateDoc: (certificate) => context.push(
                      routeDoc,
                      extra: DocPageData(
                        title: LocaleKeys.certificateDoc.tr(),
                        docType: DocType.CERTIFICATE,
                      ),
                    ),
                  ),
      ),
    );
  }
}
