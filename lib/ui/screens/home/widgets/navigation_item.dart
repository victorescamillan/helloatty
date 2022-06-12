import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_dimens.dart';

class NavigationItem extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget? child;
  const NavigationItem({Key? key, this.child, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding:
            const EdgeInsets.symmetric(horizontal: size20, vertical: size5),
        child: child,
      ),
    );
  }
}
