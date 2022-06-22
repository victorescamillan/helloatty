import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/ui/widgets/app_cards/default_card.dart';

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
              height: 420,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(
                        radius: size40,
                        backgroundImage: NetworkImage(
                            'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/05/thor-recap-feature.jpg'),
                      ),
                      const SizedBox(
                        width: 85,
                      ),
                      Column(
                        children: const [
                          Text(
                            '10',
                            style: kHeaderTextStyle,
                          ),
                          Text(
                            'March',
                            style: kActiveColorTextStyle,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: size15,
                  ),
                  const Text(
                    'Joshua Barnes',
                    style: kHeader1TextStyle,
                  ),
                  const Text(
                    'Financial Lawyer',
                    style: kSubtitle2TextStyle,
                  ),
                  const Text(
                    '15 years of Experience | Class of 2000',
                    style: kSubtitle2TextStyle,
                  ),
                  const SizedBox(
                    height: size20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.school),
                      const SizedBox(
                        width: size5,
                      ),
                      Text(
                        'University of the Philippines',
                        style: kTitleTextStyle.copyWith(color: appColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: size20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.person),
                      SizedBox(
                        width: size5,
                      ),
                      Expanded(
                        child: Text(
                          'Specialized in Finance and Security',
                          style: kBlueTextStyle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: size20,
                  ),
                  const Text(
                    'Schedule',
                    style: kTitleTextStyle,
                  ),
                  const Text(
                    'Wed, March 10, 2021 | 10:30 am',
                    style: kTitleTextStyle,
                  ),
                  const Text(
                    'https://zoom.us/meetings',
                    style: kTitleTextStyle,
                  )
                ],
              ),
            ),
            const SizedBox(
              width: size30,
            ),
            DefaultCard(
              width: 300,
              height: 420,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(
                        radius: size40,
                        backgroundImage: NetworkImage(
                            'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/05/thor-recap-feature.jpg'),
                      ),
                      const SizedBox(
                        width: 85,
                      ),
                      Column(
                        children: const [
                          Text(
                            '10',
                            style: kHeaderTextStyle,
                          ),
                          Text(
                            'March',
                            style: kActiveColorTextStyle,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: size15,
                  ),
                  const Text(
                    'Joshua Barnes',
                    style: kHeader1TextStyle,
                  ),
                  const Text(
                    'Financial Lawyer',
                    style: kSubtitle2TextStyle,
                  ),
                  const Text(
                    '15 years of Experience | Class of 2000',
                    style: kSubtitle2TextStyle,
                  ),
                  const SizedBox(
                    height: size20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.school),
                      SizedBox(
                        width: size5,
                      ),
                      Text(
                        'University of the Philippines',
                        style: kBlueTextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: size20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.person),
                      SizedBox(
                        width: size5,
                      ),
                      Expanded(
                        child: Text(
                          'Specialized in Finance and Security',
                          style: kBlueTextStyle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: size20,
                  ),
                  const Text(
                    'Schedule',
                    style: kTitleTextStyle,
                  ),
                  const Text(
                    'Wed, March 10, 2021 | 10:30 am',
                    style: kTitleTextStyle,
                  ),
                  const Text(
                    'https://zoom.us/meetings',
                    style: kTitleTextStyle,
                  )
                ],
              ),
            )
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
