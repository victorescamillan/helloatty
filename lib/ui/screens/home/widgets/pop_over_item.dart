import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_styles.dart';

class PopOverItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback? onTap;
  const PopOverItem(
      {Key? key, required this.title, this.isSelected = false, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          color: isSelected ? activeColor : kWhite,
          width: 200,
          height: 50,
          child: Text(
            title,
            style: isSelected
                ? kTitleTextStyle.copyWith(color: kWhite)
                : kTitleTextStyle,
          ),
        ));
  }
}
