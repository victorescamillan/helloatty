import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';

class DefaultElevatedButton extends StatelessWidget {
  final double width;
  final double verticalMargin;
  final double horizontalMargin;
  final double verticalPadding;
  final VoidCallback? onPressed;
  final Widget? child;
  final Color color;
  const DefaultElevatedButton(
      {Key? key,
      this.onPressed,
      this.child,
      this.width = double.infinity,
      this.verticalPadding = size20,
      this.verticalMargin = size20,
      this.color = appColor,
      this.horizontalMargin = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        margin: EdgeInsets.symmetric(
            vertical: verticalMargin, horizontal: horizontalMargin),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: color,
                padding: EdgeInsets.symmetric(vertical: verticalPadding)),
            onPressed: onPressed,
            child: child));
  }
}
