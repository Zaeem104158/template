import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

import '../provider/core_provider.dart';

class SortByPopUpMenuWidget extends ConsumerWidget {
  const SortByPopUpMenuWidget({
    Key? key,
    required this.values,
    required this.onSelected,
    this.dotTopPadding = 18,
    this.dotRightPadding = 10,
    this.padding = const EdgeInsets.only(top: 12),
  }) : super(key: key);

  final List<String> values;
  final EdgeInsets padding;
  final Function(int value) onSelected;
  final double dotTopPadding;
  final double dotRightPadding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = context.isDarkMode;
    final state = ref.watch(statusProvider);

    return Stack(
      children: [
        PopupMenuButton(
          icon: const Icon(Icons.sort),
          padding: padding,
          initialValue: state,
          itemBuilder: (context) {
            return [
              for (int i = 0; i < values.length; i++) ...[
                PopupMenuItem<int>(
                  value: i,
                  textStyle: state == i
                      ? TextStyle(
                          color: isDarkMode ? Colors.orange : Colors.red,
                        )
                      : null,
                  child: Text(
                    values[i].allCapitalize(removeCase: "_"),
                  ),
                ),
              ],
            ];
          },
          onSelected: (value) {
            if (value is int && value < values.length) {
              final statusNotifier = ref.read(
                statusProvider.notifier,
              );

              if (statusNotifier.state != value) {
                statusNotifier.state = value;
                onSelected(value);
              }
            }
          },
        ),
        if (state > 0) ...[
          Positioned(
            top: dotTopPadding,
            right: dotRightPadding,
            child: Icon(
              Icons.circle,
              size: 12,
              color: isDarkMode ? Colors.orange : Colors.red,
            ),
          ),
        ],
      ],
    );
  }
}
