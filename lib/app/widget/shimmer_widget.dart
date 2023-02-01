import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;

    return Shimmer.fromColors(
      baseColor: isDarkMode ? Colors.grey[700]! : Colors.grey[300]!,
      highlightColor: isDarkMode ? Colors.grey[500]! : Colors.grey[100]!,
      direction: ShimmerDirection.ltr,
      child: widget,
    );
  }
}
