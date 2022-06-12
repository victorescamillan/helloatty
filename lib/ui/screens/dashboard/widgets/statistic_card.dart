import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';

class StatisticCard extends StatelessWidget {
  final Widget? content;
  const StatisticCard({Key? key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: size20),
      width: MediaQuery.of(context).size.width / 2.4,
      height: 350,
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
