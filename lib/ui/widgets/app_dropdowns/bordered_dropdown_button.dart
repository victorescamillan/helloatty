import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';

class BorderedDropdownButton extends StatelessWidget {
  final String? value;
  final VoidCallback? onChanged;
  final List<String>? items;
  final String hintText;
  final String label;
  final double width;
  final double horizontalPadding;
  final double verticalPadding;
  final double verticalMargin;
  const BorderedDropdownButton(
      {Key? key,
      this.value,
      this.onChanged,
      this.items,
      this.hintText = '',
      this.label = '',
      this.width = 100,
      this.verticalPadding = size1,
      this.verticalMargin = size15,
      this.horizontalPadding = size10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: verticalMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: kTitleTextStyle,
            ),
            const SizedBox(
              height: size5,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: verticalPadding),
              decoration: BoxDecoration(
                  color: inputBackground,
                  border: Border.all(color: inputBackground),
                  borderRadius:
                      const BorderRadius.all(Radius.circular(size10))),
              child: DropdownButton<String>(
                isExpanded: true,
                hint: Text(
                  hintText,
                  style:
                      kTitleTextStyle.copyWith(fontWeight: FontWeight.normal),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(size5)),
                value: value,
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 16,
                underline: Container(color: Colors.transparent),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
