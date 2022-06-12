import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';

class StatisticBar extends StatelessWidget {
  final String label;
  final double value;
  final String textValue;
  final bool showValue;
  const StatisticBar(
      {Key? key,
      this.value = 0,
      this.showValue = true,
      this.label = '',
      this.textValue = ''})
      : super(key: key);

  _calculateValue() {
    double percentage = 100 * value / 100;
    return percentage * 2;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: size20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: size80,
                color: unselectedColor,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: _calculateValue(),
                  width: size80,
                  color: activeColor,
                ),
              ),
              if (showValue)
                Container(
                  padding: const EdgeInsets.symmetric(vertical: size5),
                  width: size80,
                  alignment: Alignment.center,
                  child: Text(
                    textValue,
                    style: kSubtitleTextStyle.copyWith(color: appBarTitleColor),
                  ),
                )
            ],
          ),
          const SizedBox(
            height: size5,
          ),
          Text(
            label,
            style: kTitleTextStyle,
          )
        ],
      ),
    );
  }
}
