import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:helloatty/constants/app_assets.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/constants/app_texts.dart';

class ProofItem extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  const ProofItem({Key? key, this.label = '', this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: kTitleTextStyle.copyWith(fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: size10,
            ),
            InkWell(
              onTap: onTap,
              child: Container(
                height: size150,
                width: size200,
                alignment: Alignment.center,
                decoration: BoxDecoration(border: Border.all(color: kGrey)),
                child: SvgPicture.asset(fileImageAsset),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: size20,
        ),
        Text(
          noImageUploadedText,
          style: kTitleTextStyle.copyWith(color: kRed),
        )
      ],
    );
  }
}
