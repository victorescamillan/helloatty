import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_styles.dart';

class ScheduleCard extends StatelessWidget {
  final String day;
  const ScheduleCard({Key? key, required this.day}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          day,
          style: kLabelTextStyle.copyWith(color: appColor, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10,),
        Container(
          width: 200,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: kBlack,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Start',
                    style: kLabelTextStyle.copyWith(color: appColor, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5,),
                  Container(
                      height: 35,
                      width: double.infinity,
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: kBlack,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Select Time', style: kLabelTextStyle.copyWith(color: appColor, fontSize: 15, fontWeight: FontWeight.bold),),
                          const Icon(Icons.access_time_filled, color: kRed, size: 20,)
                        ],
                      )
                  )
                ],
              ),
              const SizedBox(height: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Start',
                    style: kLabelTextStyle.copyWith(color: appColor, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5,),
                  Container(
                      height: 35,
                      width: double.infinity,
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: kBlack,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Select Time', style: kLabelTextStyle.copyWith(color: appColor, fontSize: 15, fontWeight: FontWeight.bold),),
                          const Icon(Icons.access_time_filled, color: kRed, size: 20,)
                        ],
                      )
                  )
                ],
              ),
              const SizedBox(height: 20,),
              const Icon(Icons.add_box_rounded, color: kRed, size: 30,),
              const SizedBox(height: 20,),
            ],
          ),
        )
      ],
    );
  }


}