import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';

class MainContainer extends StatelessWidget {
  final Widget content;
  final String title;
  const MainContainer({Key? key, required this.content, this.title = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: size100, vertical: size20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          title,
          style: kHeader1TextStyle.copyWith(fontSize: size35),
        ),
        const SizedBox(
          height: size20,
        ),
        Expanded(
            child: Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: size40, vertical: size20),
            child: content,
          ),
        ))
      ]),
    );
  }
}
