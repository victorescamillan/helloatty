import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/ui/widgets/app_cards/schedule_card.dart';

class MyScheduleWidget extends StatefulWidget {
  const MyScheduleWidget({Key? key}) : super(key: key);

  @override
  State<MyScheduleWidget> createState() => _MyScheduleWidgetState();
}

class _MyScheduleWidgetState extends State<MyScheduleWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Set Your Availability',
            style: kHeaderTextStyle.copyWith(color: appColor, fontSize: 30),
          ),
        ),
        const SizedBox(height: size20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ScheduleCard(day: 'Monday'),
            ScheduleCard(day: 'Tuesday'),
            ScheduleCard(day: 'Wednesday'),
            ScheduleCard(day: 'Thursday'),
            ScheduleCard(day: 'Friday'),
            ScheduleCard(day: 'Saturday'),
            ScheduleCard(day: 'Sunday'),
          ],
        )
      ],
    );
  }
}
