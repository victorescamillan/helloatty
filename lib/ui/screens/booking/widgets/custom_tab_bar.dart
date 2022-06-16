import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/ui/screens/booking/widgets/booking_grid_view.dart';
import 'package:helloatty/ui/screens/booking/widgets/booking_history.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {

  bool isCurrentTap = true;
  bool isHistoryTap = false;

  bool isAllTap = true;
  bool isPendingTap = false;
  bool isPreviousTap = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Booking',
          style: kHeader1TextStyle,
        ),
        const SizedBox(height: size20,),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _currentOrHistoryTab(),
            const SizedBox(height: size15,),
            (isCurrentTap) ? BookingGridView() : BookingHistory()
          ],
        )
      ],
    );
  }

  _currentOrHistoryTab() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(
            bottom: 3,
          ),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(
                color: (isCurrentTap) ? activeColor : kWhite,
                width: 2.0,
              ))
          ),
          child: GestureDetector(
            child: const Text(
                'Current Appointment',
                style: kTitleTextStyle
            ),
            onTap: () {
              setState((){
                isCurrentTap = true;
                isHistoryTap = false;
              });
            },
          )
        ),
        const SizedBox(width: size20,),
        Container(
            padding: const EdgeInsets.only(
              bottom: 3,
            ),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(
                  color: (isHistoryTap) ? activeColor : kWhite,
                  width: 2.0,
                ))
            ),
            child: GestureDetector(
              child: const Text(
                  'Booking History',
                  style: kTitleTextStyle
              ),
              onTap: () {
                setState((){
                  isCurrentTap = false;
                  isHistoryTap = true;
                });
              },
            )
        ),
      ],
    );
  }


}