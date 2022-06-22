import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_dimens.dart';

void defaultAlertDialog(BuildContext context,
    {required Widget content,
    double height = size300,
    double horizontalPadding = size50,
    double verticalPadding = size10}) {
  showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
            content: Container(
                height: height,
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding, vertical: verticalPadding),
                child: content),
          ));
}

Future<DateTime?> defaultDateTimePicker(
  BuildContext context,
) async {
  int currentYear = DateTime.now().year;
  DateTime firstDate = DateTime(currentYear - 60);
  return await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: firstDate,
      lastDate: DateTime.now());
}

Size appSize(BuildContext context) {
  return MediaQuery.of(context).size;
}
