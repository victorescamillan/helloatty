import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';

class NavigationItem extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget? child;
  final Color? color;
  const NavigationItem({Key? key, this.child, this.onTap, this.color = kWhite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(size5))),
        padding:
            const EdgeInsets.symmetric(horizontal: size20, vertical: size5),
        child: child,
      ),
    );
  }
}
