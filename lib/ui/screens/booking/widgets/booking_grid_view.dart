import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/ui/widgets/app_buttons/default_button.dart';
import 'package:helloatty/ui/widgets/app_buttons/default_outlined_button.dart';
import 'package:helloatty/ui/widgets/app_cards/default_card.dart';
import 'package:helloatty/ui/widgets/app_inputs/bordered_textfield.dart';

class BookingGridView extends StatefulWidget {
  const BookingGridView({Key? key}) : super(key: key);

  @override
  State<BookingGridView> createState() => _BookingGridViewState();
}

class _BookingGridViewState extends State<BookingGridView> {
  bool isAllTap = true;
  bool isPendingTap = false;
  bool isPreviousTap = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _filterTab(),
        Row(
          children: [
            DefaultCard(
              width: 300,
              height: 470,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: size40,
                        backgroundImage: NetworkImage(
                            'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/05/thor-recap-feature.jpg'),
                      ),
                      const SizedBox(width: 85,),
                      Column(
                        children: const [
                          Text('10',
                            style: kHeaderTextStyle,),
                          Text('March',
                            style: kActiveColorTextStyle,),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: size10,),
                  const Text('Joshua Barnes', style: kHeader1TextStyle,),
                  Text('270 Robles Manggahan, Quezon City', style: kTitleTextStyle.copyWith(color: appColor, fontWeight: FontWeight.bold),),
                  const SizedBox(height: size20,),
                  const Text('Schedule', style: kTitleTextStyle,),
                  const SizedBox(height: size5,),
                  Text('Wed, March 10, 2021 | 10:30 am', style: kTitleTextStyle.copyWith(color: kRed),),

                  const SizedBox(height: size20,),
                  Text('Message:', style: kTitleTextStyle.copyWith(fontSize: 12),),
                  Text("I'm looking for a lawyer that can help me about finance", style: kTitleTextStyle.copyWith(fontSize: 12),),

                  const SizedBox(height: size20,),
                  const Text('Enter Zoom Link', style: kTitleTextStyle,),
                  Container(
                    height: size30,
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: disabledColor,
                        border: Border.all(
                          color: disabledColor,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(5))
                    ),
                    child: TextField(
                      cursorColor: kGrey,
                      style: kTitleTextStyle.copyWith(fontSize: 13),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Input link here',
                      ),
                    )
                  ),
                  const SizedBox(height: size20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size30,
                        width: size120,
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: appColor,
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(5))
                        ),
                        child: GestureDetector(
                          child: Text(
                            'Cancel',
                            textAlign: TextAlign.center,
                            style: kTitleTextStyle.copyWith(color: appColor),
                          ),
                        ),
                      ),
                      Container(
                        height: size30,
                        width: size120,
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: appColor,
                            border: Border.all(
                              color: appColor,
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(5))
                        ),
                        child: GestureDetector(
                          child: Text(
                            'Confirm',
                            textAlign: TextAlign.center,
                            style: kTitleTextStyle.copyWith(color: kWhite),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(width: size30,),
            DefaultCard(
              width: 300,
              height: 470,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: size40,
                        backgroundImage: NetworkImage(
                            'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/05/thor-recap-feature.jpg'),
                      ),
                      const SizedBox(width: 85,),
                      Column(
                        children: const [
                          Text('10',
                            style: kHeaderTextStyle,),
                          Text('March',
                            style: kActiveColorTextStyle,),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: size10,),
                  const Text('Joshua Barnes', style: kHeader1TextStyle,),
                  Text('270 Robles Manggahan, Quezon City', style: kTitleTextStyle.copyWith(color: appColor, fontWeight: FontWeight.bold),),
                  const SizedBox(height: size20,),
                  const Text('Schedule', style: kTitleTextStyle,),
                  const SizedBox(height: size5,),
                  Text('Wed, March 10, 2021 | 10:30 am', style: kTitleTextStyle.copyWith(color: kRed),),

                  const SizedBox(height: size20,),
                  Text('Message:', style: kTitleTextStyle.copyWith(fontSize: 12),),
                  Text("I'm looking for a lawyer that can help me about finance", style: kTitleTextStyle.copyWith(fontSize: 12),),

                  const SizedBox(height: size20,),
                  const Text('Enter Zoom Link', style: kTitleTextStyle,),
                  Container(
                      height: size30,
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          color: disabledColor,
                          border: Border.all(
                            color: disabledColor,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5))
                      ),
                      child: TextField(
                        cursorColor: kGrey,
                        style: kTitleTextStyle.copyWith(fontSize: 13),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Input link here',
                        ),
                      )
                  ),
                  const SizedBox(height: size20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size30,
                        width: size120,
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: appColor,
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(5))
                        ),
                        child: GestureDetector(
                          child: Text(
                            'Cancel',
                            textAlign: TextAlign.center,
                            style: kTitleTextStyle.copyWith(color: appColor),
                          ),
                        ),
                      ),
                      Container(
                        height: size30,
                        width: size120,
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: appColor,
                            border: Border.all(
                              color: appColor,
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(5))
                        ),
                        child: GestureDetector(
                          child: Text(
                            'Confirm',
                            textAlign: TextAlign.center,
                            style: kTitleTextStyle.copyWith(color: kWhite),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        )
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
                border: Border(
                    bottom: BorderSide(
              color: (isAllTap) ? activeColor : kWhite,
              width: 2.0,
            ))),
            child: GestureDetector(
              child: const Text('All', style: kTitleTextStyle),
              onTap: () {
                setState(() {
                  isAllTap = true;
                  isPendingTap = false;
                  isPreviousTap = false;
                });
              },
            )),
        const SizedBox(
          width: size20,
        ),
        Container(
            padding: const EdgeInsets.only(
              bottom: 3,
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: (isPendingTap) ? activeColor : kWhite,
              width: 2.0,
            ))),
            child: GestureDetector(
              child: const Text('Pending', style: kTitleTextStyle),
              onTap: () {
                setState(() {
                  isAllTap = false;
                  isPendingTap = true;
                  isPreviousTap = false;
                });
              },
            )),
        const SizedBox(
          width: size20,
        ),
        Container(
            padding: const EdgeInsets.only(
              bottom: 3,
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: (isPreviousTap) ? activeColor : kWhite,
              width: 2.0,
            ))),
            child: GestureDetector(
              child: const Text('Previous', style: kTitleTextStyle),
              onTap: () {
                setState(() {
                  isAllTap = false;
                  isPendingTap = false;
                  isPreviousTap = true;
                });
              },
            )),
      ],
    );
  }
}
