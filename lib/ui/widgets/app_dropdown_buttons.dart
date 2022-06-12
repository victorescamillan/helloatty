import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';

class AppDropdownButton extends StatelessWidget {
  final String? value;
  final VoidCallback? onChanged;
  final List<String>? items;
  final String hint;
  const AppDropdownButton(
      {Key? key, this.value, this.onChanged, this.items, this.hint = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      borderRadius: const BorderRadius.all(Radius.circular(size5)),
      value: value,
      icon: const Icon(Icons.keyboard_arrow_down),
      elevation: 16,
      style: const TextStyle(color: appTitleColor),
      onChanged: (String? newValue) => onChanged,
      items: items!.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: kSubtitleTextStyle.copyWith(fontSize: size14),
          ),
        );
      }).toList(),
    );
  }
}
