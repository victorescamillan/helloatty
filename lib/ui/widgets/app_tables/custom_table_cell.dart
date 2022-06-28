import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';

class CustomTableCell extends StatelessWidget {
  final String text;
  final bool isHeader;
  const CustomTableCell({Key? key, this.text = '', this.isHeader = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: isHeader ? size20 : size1),
          child: Text(
            text,
            style: isHeader
                ? kTitleTextStyle.copyWith(color: activeColor)
                : kTitleTextStyle,
          ),
        ));
  }
}
