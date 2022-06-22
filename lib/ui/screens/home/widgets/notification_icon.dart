import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helloatty/constants/app_assets.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/enums/enums.dart';
import 'package:helloatty/navigation/app_router.gr.dart';
import 'package:helloatty/ui/screens/home/widgets/pop_over_item.dart';
import 'package:helloatty/ui/widgets/navigation_item.dart';
import 'package:helloatty/utils/utils.dart';
import 'package:popover/popover.dart';
import 'package:auto_route/auto_route.dart';

class NotificationIcon extends StatefulWidget {
  const NotificationIcon({Key? key}) : super(key: key);

  @override
  State<NotificationIcon> createState() => _NotificationIconState();
}

class _NotificationIconState extends State<NotificationIcon> {
  PopoverOption _option = PopoverOption.none;
  @override
  Widget build(BuildContext context) {
    return NavigationItem(
      child: SvgPicture.asset(
        bellAsset,
        height: size26,
        width: size26,
      ),
      onTap: () {
        showCustomPopOver(context,
            width: 400,
            height: 300,
            content: Column(
              children: [
                Container(
                  width: appSize(context).width,
                  padding: const EdgeInsets.symmetric(vertical: size20),
                  color: activeColor,
                  child: Text(
                    'Notifications',
                    textAlign: TextAlign.center,
                    style: kHeader3TextStyle.copyWith(
                      color: kWhite,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return _notificationItem();
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: TextButton(
                      onPressed: () {
                        context.router.navigate(const NotificationRoute());
                        Navigator.pop(context);
                      },
                      child: Text(
                        'See all Notifications',
                        style: kHeader3TextStyle.copyWith(
                            color: activeColor, fontWeight: FontWeight.normal),
                      )),
                )
              ],
            ));
      },
    );
  }

  Widget _notificationItem() {
    return Card(
      child: ListTile(
        onTap: () {},
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/05/thor-recap-feature.jpg'),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Enrico Juliano',
              style: kTitleTextStyle,
            ),
            Text(
              '9 Mins',
              style: kSubtitleTextStyle,
            ),
          ],
        ),
        subtitle: const Text(
          'You have an upcoming Consultation schedule with MR Enrico Juliano in 15 mins.',
          style: kSubtitleTextStyle,
        ),
      ),
    );
  }
}
