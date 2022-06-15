import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/ui/screens/booking/widgets/custom_tab_bar.dart';

import 'widgets/booking_grid_view.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: size100, vertical: size20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomTabBar(),
            SizedBox(
              height: size20,
            ),
            BookingGridView(),
            SizedBox(
              height: size20,
            ),
          ],
        ),
      ),
    );
  }
}
