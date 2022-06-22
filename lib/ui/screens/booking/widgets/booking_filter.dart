import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/ui/widgets/app_cards/default_card.dart';

class BookingFilter extends StatefulWidget {
  const BookingFilter({Key? key}) : super(key: key);

  @override
  State<BookingFilter> createState() => _BookingFilterState();
}

class _BookingFilterState extends State<BookingFilter> {

  bool isAllTap = true;
  bool isPendingTap = false;
  bool isPreviousTap = false;
  String filterText = 'Current Bookings';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              filterText,
              style: kHeaderTextStyle.copyWith(color: appColor, fontSize: 35),
            ),
            PopupMenuButton(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(color: kGrey),
                    borderRadius: BorderRadius.all(Radius.circular(size5))),
                splashRadius: size20,
                child: Container(
                  height: size40,
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: kRed,
                      border: Border.all(
                        color: kRed,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(5))
                  ),
                  child: Row(
                    children: [
                      Text('Filter By', style: kActiveColorTextStyle.copyWith(fontWeight: FontWeight.normal,color: kWhite, fontSize: size20),),
                      const SizedBox(width: size5,),
                      const Icon(Icons.filter_list, color: kWhite,)
                    ],
                  ),
                ),
                onSelected: (value) {
                  setState(() {
                    filterText = value.toString();
                  });
                },
                itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'Current Bookings',
                    child: Text(
                      'Current Bookings',
                      style: kSubtitleTextStyle,
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Pending Bookings',
                    child: Text(
                      'Pending Bookings',
                      style: kSubtitleTextStyle,
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Completed Bookings',
                    child: Text(
                      'Completed Bookings',
                      style: kSubtitleTextStyle,
                    ),
                  ),
                ])
          ],
        ),
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
                  const SizedBox(height: size15,),
                  const Text('Joshua Barnes', style: kHeader1TextStyle,),
                  const Text('Financial Lawyer', style: kSubtitle2TextStyle,),
                  const Text('15 years of Experience | Class of 2000', style: kSubtitle2TextStyle,),
                  const SizedBox(height: size20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const[
                      Icon(Icons.school),
                      SizedBox(width: size5,),
                      Text('University of the Philippines', style: kBlueTextStyle,),
                    ],
                  ),
                  const SizedBox(height: size20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const[
                      Icon(Icons.person),
                      SizedBox(width: size5,),
                      Expanded(
                        child: Text(
                          'Specialized in Finance and Security',
                          style: kBlueTextStyle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: size20,),
                  const Text('Schedule', style: kTitleTextStyle,),
                  const Text('Wed, March 10, 2021 | 10:30 am', style: kTitleTextStyle,),
                  const Text('https://zoom.us/meetings', style: kTitleTextStyle,)
                ],
              ),
            ),
            const SizedBox(width: size30,),
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
                  const SizedBox(height: size15,),
                  const Text('Joshua Barnes', style: kHeader1TextStyle,),
                  const Text('Financial Lawyer', style: kSubtitle2TextStyle,),
                  const Text('15 years of Experience | Class of 2000', style: kSubtitle2TextStyle,),
                  const SizedBox(height: size20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const[
                      Icon(Icons.school),
                      SizedBox(width: size5,),
                      Text('University of the Philippines', style: kBlueTextStyle,),
                    ],
                  ),
                  const SizedBox(height: size20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const[
                      Icon(Icons.person),
                      SizedBox(width: size5,),
                      Expanded(
                        child: Text(
                          'Specialized in Finance and Security',
                          style: kBlueTextStyle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: size20,),
                  const Text('Schedule', style: kTitleTextStyle,),
                  const Text('Wed, March 10, 2021 | 10:30 am', style: kTitleTextStyle,),
                  const Text('https://zoom.us/meetings', style: kTitleTextStyle,)
                ],
              ),
            )
          ],
        ),
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
    );
  }

}