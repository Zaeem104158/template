import 'package:flutter/material.dart';
import 'package:thrive_mobile_app/app/provider/pagination_provider.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/app/widget/error_retry_widget.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

class PaginatedErrorWidget extends StatelessWidget {
  const PaginatedErrorWidget({
    Key? key,
    required this.notifier,
    required this.state,
    this.divider = 1,
  }) : super(key: key);

  final double divider;
  final PaginationStateNotifier notifier;
  final PaginationState<dynamic> state;

  @override
  Widget build(BuildContext context) {
    return ErrorRetryWidget(
      state.error!,
      divider: divider,
      onPressed: state.error.isNetworkError
          ? () => notifier.getPaginatedData(fromRefresh: true)
          : null,
    );
  }
}
