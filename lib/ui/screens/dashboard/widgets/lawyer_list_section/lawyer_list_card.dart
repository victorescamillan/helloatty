import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/ui/widgets/app_buttons/default_button.dart';

class LawyerListCard extends StatelessWidget {
  final Widget? content;
  const LawyerListCard({Key? key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width / 2.4;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: size20),
      width: cardWidth,
      child: Card(
        elevation: size8,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: size20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            const CircleAvatar(
              radius: size50,
              backgroundImage: NetworkImage(
                  'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/05/thor-recap-feature.jpg'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Joshua Barnes',
                  style: kHeader1TextStyle.copyWith(color: appColor),
                ),
                const Text(
                  'Finance & Security Lawyer',
                  style: kSubtitleTextStyle,
                ),
                const Text('15 years of experience', style: kSubtitleTextStyle)
              ],
            ),
            DefaultElevatedButton(
              onPressed: () {},
              width: 150,
              child: const Text('Book Appointment'),
            )
          ]),
        ),
      ),
    );
  }
}
