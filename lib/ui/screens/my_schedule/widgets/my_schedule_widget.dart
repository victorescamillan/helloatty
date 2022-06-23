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
        Text(
          'My Schedule',
          style: kHeaderTextStyle.copyWith(color: appColor, fontSize: 35),
        ),
        const SizedBox(height: size15,),
        Container(
          height: 600,
          width: double.infinity,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              border: Border.all(
                color: kWhite,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Set Your Availability',
                style: kHeaderTextStyle.copyWith(color: appColor, fontSize: 30),
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
          ),
        )
      ],
    );
  }
}