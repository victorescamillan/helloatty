import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';

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
            _filterTab(),
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

  _filterTab() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.only(
              bottom: 3,
            ),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(
                  color: (isAllTap) ? activeColor : kWhite,
                  width: 2.0,
                ))
            ),
            child: GestureDetector(
              child: const Text(
                  'All',
                  style: kTitleTextStyle
              ),
              onTap: () {
                setState((){
                  isAllTap = true;
                  isPendingTap = false;
                  isPreviousTap = false;
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
                  color: (isPendingTap) ? activeColor : kWhite,
                  width: 2.0,
                ))
            ),
            child: GestureDetector(
              child: const Text(
                  'Pending',
                  style: kTitleTextStyle
              ),
              onTap: () {
                setState((){
                  isAllTap = false;
                  isPendingTap = true;
                  isPreviousTap = false;
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
                  color: (isPreviousTap) ? activeColor : kWhite,
                  width: 2.0,
                ))
            ),
            child: GestureDetector(
              child: const Text(
                  'Previous',
                  style: kTitleTextStyle
              ),
              onTap: () {
                setState((){
                  isAllTap = false;
                  isPendingTap = false;
                  isPreviousTap = true;
                });
              },
            )
        ),
      ],
    );
  }
}