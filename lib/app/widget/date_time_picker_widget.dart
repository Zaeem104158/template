import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '../../app/values/app_colors.dart';

class DateTimePickerWidget extends StatefulWidget {
  final String? labelText;
  final String? text;
  final double? width;
  final Color? textColor;
  final double? fontSize;
  final String dateFormat;
  final bool isTimePicked;
  final bool autofocus;
  final bool showSuffixIcon;
  final DateTime? initialDate;
  final DateTime? defaultDate;
  final TimeOfDay? defaultTime;
  final Color? buttonColor;
  final double borderRadius;
  final EdgeInsets padding;
  final Function(String? value, int? timestamp) onChanged;

  const DateTimePickerWidget({
    Key? key,
    required this.labelText,
    this.text,
    this.defaultDate,
    this.defaultTime,
    this.initialDate,
    this.fontSize = 18,
    this.borderRadius = 5,
    required this.onChanged,
    this.autofocus = false,
    this.isTimePicked = true,
    this.showSuffixIcon = true,
    this.width = double.infinity,
    this.textColor = Colors.white,
    this.buttonColor = colorPrimary,
    this.dateFormat = "dd/MM/yyyy",
    this.padding = const EdgeInsets.fromLTRB(20, 8, 20, 8),
  }) : super(key: key);

  @override
  State<DateTimePickerWidget> createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  String? _selectedDateTime;

  @override
  void didChangeDependencies() {
    if (widget.isTimePicked &&
        widget.defaultDate != null &&
        widget.defaultTime != null) {
      _selectedDateTime =
          "${DateFormat(widget.dateFormat).format(widget.defaultDate!)} ${widget.defaultTime!.format(context)}";
    } else if (widget.defaultDate != null) {
      _selectedDateTime =
          DateFormat(widget.dateFormat).format(widget.defaultDate!);
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(
          top: 0,
          left: 16,
          right: 16,
        ),
        child: TextField(
          readOnly: true,
          autofocus: widget.autofocus,
          controller: TextEditingController(text: _selectedDateTime),
          decoration: InputDecoration(
            labelText: widget.labelText,
            hintText: widget.text ??
                (widget.isTimePicked
                    ? "${widget.dateFormat} hh:mm a"
                    : widget.dateFormat),
            contentPadding: const EdgeInsets.fromLTRB(0, 3, 0, 8),
            suffixIcon: widget.showSuffixIcon
                ? Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: const Icon(
                      Icons.date_range,
                      size: 20,
                    ),
                  )
                : null,
          ),
          onTap: () => _showDateTimePicker(),
        ),
      ),
    );
  }

  Future<void> _showDateTimePicker() async {
    DateTime? datePicked = await showDatePicker(
      context: context,
      initialDate: widget.initialDate ?? DateTime.now(),
      firstDate: widget.initialDate ?? DateTime.now(),
      lastDate: DateTime(2100),
    );

    if (datePicked != null) {
      if (widget.isTimePicked) {
        final TimeOfDay? timePicked = await showTimePicker(
          context: context,
          initialTime: TimeOfDay(
            hour: TimeOfDay.now().hour,
            minute: TimeOfDay.now().minute,
          ),
        );

        if (timePicked != null) {
          setState(() {
            datePicked = datePicked!.add(
              Duration(
                hours: timePicked.hour,
                minutes: timePicked.minute,
              ),
            );
            _selectedDateTime =
                "${DateFormat(widget.dateFormat).format(datePicked!)} ${timePicked.format(context)}";
            widget.onChanged(
              _selectedDateTime,
              datePicked!.millisecondsSinceEpoch ~/ 1000,
            );
          });
        }
      } else {
        setState(() {
          _selectedDateTime = DateFormat(widget.dateFormat).format(datePicked!);
          widget.onChanged(
            _selectedDateTime,
            datePicked!.millisecondsSinceEpoch ~/ 1000,
          );
        });
      }
    }
  }
}




// import 'dart:developer';

// import 'package:intl/intl.dart';
// import 'package:flutter/material.dart';
// import '../../app/values/app_colors.dart';

// class DateTimePickerWidget extends StatefulWidget {
//   final String? labelText;
//   final String? text;
//   final double? width;
//   final Color? textColor;
//   final double? fontSize;
//   final String dateFormat;
//   final bool isTimePicked;
//   final bool showSuffixIcon;
//   final DateTime? initialDate;
//   final DateTime? defaultDate;
//   final TimeOfDay? defaultTime;
//   final Color? buttonColor;
//   final double borderRadius;
//   final EdgeInsets padding;
//   final Function(String? value, int? timestamp) onChanged;

//   const DateTimePickerWidget({
//     Key? key,
//     required this.labelText,
//     this.text,
//     this.defaultDate,
//     this.defaultTime,
//     this.initialDate,
//     this.fontSize = 18,
//     this.borderRadius = 5,
//     required this.onChanged,
//     this.isTimePicked = true,
//     this.showSuffixIcon = true,
//     this.width = double.infinity,
//     this.textColor = Colors.white,
//     this.buttonColor = colorPrimary,
//     this.dateFormat = "dd/MM/yyyy",
//     this.padding = const EdgeInsets.fromLTRB(20, 8, 20, 8),
//   }) : super(key: key);

//   @override
//   State<DateTimePickerWidget> createState() => _DateTimePickerWidgetState();
// }

// class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
//   String? _selectedDateTime;
//   late final String dateTimeFormat;

//   @override
//   void initState() {
//     if (widget.isTimePicked) {
//       dateTimeFormat = "${widget.dateFormat} hh:mm: a";
//     } else {
//       dateTimeFormat = widget.dateFormat;
//     }
//     super.initState();
//   }

//   @override
//   void didChangeDependencies() {
//     if (widget.isTimePicked &&
//         widget.defaultDate != null &&
//         widget.defaultTime != null) {
//       // _selectedDateTime =
//       //     "${DateFormat(dateTimeFormat).format(widget.defaultDate!)} ${widget.defaultTime!.format(context)}";
//       _selectedDateTime =
//           "${DateFormat(dateTimeFormat).format(widget.defaultDate!)} ${widget.defaultTime}";
//     } else if (widget.defaultDate != null) {
//       _selectedDateTime =
//           DateFormat(dateTimeFormat).format(widget.defaultDate!);
//     }

//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: widget.padding,
//       child: Container(
//         width: double.infinity,
//         padding: const EdgeInsets.only(
//           top: 0,
//           left: 16,
//           right: 16,
//         ),
//         child: TextField(
//           readOnly: true,
//           autofocus: true,
//           controller: TextEditingController(text: _selectedDateTime),
//           decoration: InputDecoration(
//             labelText: widget.labelText,
//             hintText: widget.text ?? dateTimeFormat,
//             contentPadding: const EdgeInsets.fromLTRB(0, 3, 0, 8),
//             suffixIcon: widget.showSuffixIcon
//                 ? Padding(
//                     padding: EdgeInsets.only(top: 10),
//                     child: const Icon(
//                       Icons.date_range,
//                       size: 20,
//                     ),
//                   )
//                 : null,
//           ),
//           onTap: () => _showDateTimePicker(),
//         ),
//       ),
//     );
//   }

//   Future<void> _showDateTimePicker() async {
//     DateTime? datePicked = await showDatePicker(
//       context: context,
//       initialDate: widget.initialDate ?? DateTime.now(),
//       firstDate: widget.initialDate ?? DateTime.now(),
//       lastDate: DateTime(2100),
//     );

//     if (datePicked != null) {
//       if (widget.isTimePicked) {
//         final TimeOfDay? timePicked = await showTimePicker(
//           context: context,
//           initialTime: TimeOfDay(
//             hour: TimeOfDay.now().hour,
//             minute: TimeOfDay.now().minute,
//           ),
//         );

//         if (timePicked != null) {
//           setState(() {
//             datePicked = datePicked!.add(
//               Duration(
//                 hours: timePicked.hour,
//                 minutes: timePicked.minute,
//               ),
//             );

//             log("message dateTimeFormat: ${dateTimeFormat}");

//             _selectedDateTime =
//                 "${DateFormat(dateTimeFormat).format(datePicked!)} ${timePicked.format(context)}";
//             // _selectedDateTime =
//             //     "${DateFormat(dateTimeFormat).format(datePicked!)} ${timePicked.hour}:${timePicked.minute} ${timePicked.period.name}";
//             widget.onChanged(
//               _selectedDateTime,
//               datePicked!.millisecondsSinceEpoch ~/ 1000,
//             );
//           });
//         }
//       } else {
//         setState(() {
//           _selectedDateTime = DateFormat(dateTimeFormat).format(datePicked!);
//           widget.onChanged(
//             _selectedDateTime,
//             datePicked!.millisecondsSinceEpoch ~/ 1000,
//           );
//         });
//       }
//     }
//   }
// }
