import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/ui/screens/booking/widgets/booking_grid_view.dart';
import 'package:helloatty/ui/screens/booking/widgets/booking_history_grid.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {

  bool isHistoryTap = true;
  bool isRemovalTap = false;
  bool isCompletionTap = false;

  bool isAllTap = true;
  bool isPendingTap = false;
  bool isPreviousTap = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: size20,),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _currentOrHistoryTab(),
            const SizedBox(height: size15,),
            const BookingGridView(),
            const SizedBox(height: size20,),
            SizedBox(
              height: size40,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: kRed,
                        border: Border.all(
                          color: kRed,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(5))
                    ),
                    child: Text('1', style: kTitleTextStyle.copyWith(color: kWhite, fontSize: size20),),
                  ),
                  const SizedBox(width: size15,),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: kWhite,
                        border: Border.all(
                          color: kWhite,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(5))
                    ),
                    child: Text('2', style: kTitleTextStyle.copyWith(color: kRed, fontSize: size20),),
                  ),
                  const SizedBox(width: size15,),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: kWhite,
                        border: Border.all(
                          color: kWhite,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(5))
                    ),
                    child: Text('3', style: kTitleTextStyle.copyWith(color: kRed, fontSize: size20),),
                  ),
                  const SizedBox(width: size15,),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: kWhite,
                        border: Border.all(
                          color: kWhite,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(5))
                    ),
                    child: Text('4', style: kTitleTextStyle.copyWith(color: kRed, fontSize: size20),),
                  )
                ],
              ),
            )
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
                color: (isHistoryTap) ? activeColor : kWhite,
                width: 2.0,
              ))
          ),
          child: GestureDetector(
            child: const Text(
                'History',
                style: kTitleTextStyle
            ),
            onTap: () {
              setState((){
                isHistoryTap = true;
                isRemovalTap = false;
                isCompletionTap = false;
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
                  color: (isRemovalTap) ? activeColor : kWhite,
                  width: 2.0,
                ))
            ),
            child: GestureDetector(
              child: const Text(
                  'Removal',
                  style: kTitleTextStyle
              ),
              onTap: () {
                setState((){
                  isHistoryTap = false;
                  isRemovalTap = true;
                  isCompletionTap = false;
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
                  color: (isCompletionTap) ? activeColor : kWhite,
                  width: 2.0,
                ))
            ),
            child: GestureDetector(
              child: const Text(
                  'Completion',
                  style: kTitleTextStyle
              ),
              onTap: () {
                setState((){
                  isHistoryTap = false;
                  isRemovalTap = false;
                  isCompletionTap = true;
                });
              },
            )
        ),
      ],
    );
  }


}