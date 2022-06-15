import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';

class DefaultCard extends StatelessWidget {
  final Widget? content;
  final double width;
  final double height;
  const DefaultCard(
      {Key? key, this.content, this.width = size100, this.height = size100})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: size20),
      width: width,
      height: height,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: kGrey),
            borderRadius: const BorderRadius.all(Radius.circular(size5))),
        child: Column(children: [
          Expanded(
            child:
                Padding(padding: const EdgeInsets.all(size20), child: content),
          ),
          Container(
            decoration: const BoxDecoration(
                color: activeColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(size5),
                    bottomRight: Radius.circular(size5))),
            height: size10,
          )
        ]),
      ),
    );
  }
}
