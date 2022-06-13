import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';

class BorderedTextField extends StatelessWidget {
  final double verticalMargin;
  final double horizontalMargin;
  final double verticalPadding;
  final double horizontalPadding;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String hintText;
  final bool isObscureText;
  final String label;
  final double width;
  final TextEditingController? controller;
  const BorderedTextField(
      {Key? key,
      this.label = '',
      this.verticalMargin = size5,
      this.horizontalMargin = 0,
      this.verticalPadding = size20,
      this.horizontalPadding = size10,
      this.controller,
      this.prefixIcon,
      this.suffixIcon,
      this.hintText = '',
      this.width = double.infinity,
      this.isObscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(
          vertical: verticalMargin, horizontal: horizontalMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: kTitleTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: size6),
            child: TextField(
              controller: controller,
              obscureText: isObscureText,
              cursorColor: kGrey,
              decoration: InputDecoration(
                filled: true,
                fillColor: inputBackground,
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                contentPadding: EdgeInsets.symmetric(
                    vertical: verticalPadding, horizontal: horizontalPadding),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: inputBackground),
                    borderRadius: BorderRadius.all(Radius.circular(size10))),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: inputBackground),
                    borderRadius: BorderRadius.all(Radius.circular(size10))),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: inputBackground),
                    borderRadius: BorderRadius.all(Radius.circular(size10))),
                hintText: hintText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
