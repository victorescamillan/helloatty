import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';

class NavigationFooter extends StatelessWidget {
  const NavigationFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerBackground,
      width: double.infinity,
      padding: const EdgeInsets.all(size10),
      child: Text(
        '2022 Hello Atty, All Rights Reserved',
        textAlign: TextAlign.center,
        style: kTitleTextStyle.copyWith(color: kWhite),
      ),
    );
  }
}
