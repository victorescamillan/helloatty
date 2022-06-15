import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/ui/screens/dashboard/widgets/dashboard_section/statistic_card.dart';

class BookingGridView extends StatefulWidget {
  const BookingGridView({Key? key}) : super(key: key);

  @override
  State<BookingGridView> createState() => _BookingGridViewState();
}

class _BookingGridViewState extends State<BookingGridView> {
  @override
  Widget build(BuildContext context) {
    return StatisticCard(
        width: 6.5,
        content: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: size40,
                    backgroundImage: NetworkImage(
                        'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/05/thor-recap-feature.jpg'),
                  ),
                  const SizedBox(width: size30,),
                  Column(
                    children: [],
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}