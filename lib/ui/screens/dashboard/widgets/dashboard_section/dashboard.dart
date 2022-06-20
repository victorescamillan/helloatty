import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/ui/screens/dashboard/widgets/dashboard_section/static_bar.dart';
import 'package:helloatty/ui/widgets/app_cards/default_card.dart';
import 'package:helloatty/ui/widgets/app_dropdowns/default_dropdown_button%20copy.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Dashboard',
          style: kHeader1TextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [_totalBookings(context), _totalAmountPaid(context)],
        )
      ],
    );
  }

  _totalBookings(BuildContext context) {
    return DefaultCard(
      width: MediaQuery.of(context).size.width / 2.4,
      height: 350,
      content: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Total Bookings',
              style: kHeader3TextStyle,
            ),
            Row(
              children: [
                const AppDropdownButton(
                  value: 'January',
                  items: ['January'],
                ),
                const SizedBox(
                  width: size15,
                ),
                const AppDropdownButton(
                  value: '2022',
                  items: ['2022'],
                ),
                const SizedBox(
                  width: size15,
                ),
                PopupMenuButton(
                    splashRadius: size20,
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                          const PopupMenuItem<String>(
                            value: '',
                            child: Text(
                              'View Current Bookings',
                              style: kSubtitleTextStyle,
                            ),
                          ),
                        ])
              ],
            ),
          ],
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '40',
                      style: kHeader1TextStyle,
                    ),
                    Text(
                      'Total Bookings',
                      style: kHeader3TextStyle,
                    ),
                  ],
                ),
              ),
              Row(
                children: const [
                  StatisticBar(
                    label: 'Current',
                    textValue: '5',
                    value: 5,
                  ),
                  StatisticBar(
                    label: 'Pending',
                    textValue: '14',
                    value: 14,
                  ),
                  StatisticBar(
                    label: 'Completed',
                    textValue: '41',
                    value: 41,
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }

  _totalAmountPaid(BuildContext context) {
    return DefaultCard(
      width: MediaQuery.of(context).size.width / 2.4,
      height: 350,
      content: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Total Amount Paid',
              style: kHeader3TextStyle,
            ),
            Row(
              children: const [
                AppDropdownButton(
                  value: 'January',
                  items: ['January'],
                ),
                SizedBox(
                  width: size15,
                ),
                AppDropdownButton(
                  value: '2022',
                  items: ['2022'],
                )
              ],
            ),
          ],
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '₱ 50,0000.00',
                      style: kHeader1TextStyle,
                    ),
                    Text(
                      'Total Amount Paid',
                      style: kHeader3TextStyle,
                    ),
                    SizedBox(
                      height: size20,
                    ),
                    Text(
                      '50 %',
                      style: kHeader1TextStyle,
                    ),
                    Text(
                      'Paid Bookings',
                      style: kHeader3TextStyle,
                    ),
                  ],
                ),
              ),
              Row(
                children: const [
                  StatisticBar(
                    label: 'Current',
                    textValue: '₱ 50,0000.00',
                    value: 50,
                  ),
                  StatisticBar(
                    label: 'Pending',
                    textValue: '₱ 50,0000.00',
                    value: 50,
                  ),
                  StatisticBar(
                    label: 'Completed',
                    textValue: '₱ 50,0000.00',
                    value: 50,
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
