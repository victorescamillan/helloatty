import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helloatty/constants/app_assets.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/enums/enums.dart';
import 'package:helloatty/navigation/app_router.gr.dart';
import 'package:helloatty/ui/screens/home/widgets/notification_icon.dart';
import 'package:helloatty/ui/screens/home/widgets/profile_avatar.dart';
import 'package:helloatty/ui/widgets/navigation_item.dart';
import 'package:popover/popover.dart';

class NavigationHeader extends StatefulWidget {
  const NavigationHeader({Key? key}) : super(key: key);

  @override
  State<NavigationHeader> createState() => _NavigationHeaderState();
}

class _NavigationHeaderState extends State<NavigationHeader> {
  NavItem _navItem = NavItem.home;
  bool isBookingTapped = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isBookingTapped = false;
                      _navItem = NavItem.home;
                    });
                    context.router.navigate(const DashboardRoute());
                  },
                  child: Image.asset(
                    appLogoWithText,
                    width: size200,
                  )),
              Row(
                children: [
                  NavigationItem(
                    isActive: _navItem == NavItem.home,
                    onTap: () {
                      setState(() {
                        isBookingTapped = false;
                        _navItem = NavItem.home;
                      });
                      context.router.navigate(const DashboardRoute());
                    },
                    child: const Text(
                      'Home',
                      style: kHeader2TextStyle,
                    ),
                  ),
                  NavigationItem(
                    isActive: _navItem == NavItem.calendar,
                    child: const Text(
                      'Calendar',
                      style: kHeader2TextStyle,
                    ),
                    onTap: () {
                      setState(() {
                        isBookingTapped = false;
                        _navItem = NavItem.calendar;
                      });
                      context.router.navigate(const CalendarRoute());
                    },
                  ),
                  NavigationItem(
                    isActive: _navItem == NavItem.mySchedule,
                    child: const Text(
                      'My Schedule',
                      style: kHeader2TextStyle,
                    ),
                    onTap: () {
                      setState(() {
                        isBookingTapped = false;
                        _navItem = NavItem.mySchedule;
                      });
                      context.router.navigate(const MyScheduleRoute());
                    },
                  ),
                  NavigationItem(
                    isActive: _navItem == NavItem.booking,
                    child: const Text(
                      'Booking',
                      style: kHeader2TextStyle,
                    ),
                    onTap: () {
                      setState(() {
                        isBookingTapped = true;
                        _navItem = NavItem.booking;
                      });
                      context.router.navigate(const BookingRoute());
                    },
                  ),
                  NavigationItem(
                    isActive: _navItem == NavItem.finance,
                    child: const Text(
                      'Finance',
                      style: kHeader2TextStyle,
                    ),
                    onTap: () {
                      setState(() {
                        isBookingTapped = false;
                        _navItem = NavItem.finance;
                      });
                      context.router.navigate(const FinanceRoute());
                    },
                  ),
                  NavigationItem(
                    child: SvgPicture.asset(messagesAsset,
                        height: size26,
                        width: size26,
                        color: _navItem == NavItem.chat ? activeColor : null),
                    onTap: () {
                      setState(() {
                        _navItem = NavItem.chat;
                      });
                      context.router.navigate(const MessagesRoute());
                    },
                  ),
                  NotificationIcon(
                    isActive: _navItem == NavItem.notifications,
                    onSelectAll: () {
                      setState(() {
                        _navItem = NavItem.notifications;
                      });

                      context.router.navigate(const NotificationRoute());
                      Navigator.pop(context);
                    },
                  ),
                  const ProfileAvatar(),
                  NavigationItem(
                    child: Row(
                      children: [
                        Container(
                          height: size20,
                          width: size2,
                          color: activeColor,
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: activeColor,
                        ),
                        const SizedBox(
                          width: size5,
                        ),
                        Text(
                          'Sign Out',
                          style: kHeader3TextStyle.copyWith(color: activeColor),
                        ),
                      ],
                    ),
                    onTap: () {
                      context.router.replace(const LoginRoute());
                    },
                  ),
                ],
              )
            ],
          ),
        ),
        (isBookingTapped)
            ? Container()
            : Container(
                height: size15,
                width: MediaQuery.of(context).size.width,
                color: appColor,
              )
      ],
    );
  }
}
