import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/ui/screens/dashboard/widgets/lawyer_list_section/lawyer_list_card.dart';

class LawyerList extends StatelessWidget {
  const LawyerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Lawyer List',
              style: kHeader1TextStyle,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    'View All',
                    style: kHeader1TextStyle.copyWith(
                        color: activeColor, fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    width: size5,
                  ),
                  const Icon(
                    Icons.play_arrow,
                    color: activeColor,
                  ),
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [LawyerListCard(), LawyerListCard()],
        )
      ],
    );
  }
}
