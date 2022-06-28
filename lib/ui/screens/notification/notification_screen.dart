import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/ui/widgets/app_buttons/default_button.dart';
import 'package:helloatty/ui/widgets/main_container.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return MainContainer(
        title: 'Notifications',
        content: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return _notificationItem();
            }));
  }

  _notificationItem() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: size20, horizontal: size20),
        decoration: BoxDecoration(border: Border(bottom: BorderSide())),
        child: Row(
          children: [
            const CircleAvatar(
              radius: size40,
              backgroundImage: NetworkImage(
                  'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/05/thor-recap-feature.jpg'),
            ),
            const SizedBox(
              width: size20,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Enrico Juliano',
                      style: kHeader1TextStyle,
                    ),
                    Text(
                      'The client is trying to book a lawyer.',
                      style: kTitleTextStyle.copyWith(color: appColor),
                    ),
                  ]),
            ),
            DefaultElevatedButton(
                width: 150,
                verticalMargin: size20,
                verticalPadding: size18,
                onPressed: () {},
                child: Text(
                  'View Details',
                  style: kTitleTextStyle.copyWith(color: kWhite),
                ))
          ],
        ));
  }
}
