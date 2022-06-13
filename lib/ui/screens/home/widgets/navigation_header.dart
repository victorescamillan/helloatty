import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helloatty/constants/app_assets.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/navigation/app_router.gr.dart';
import 'package:helloatty/ui/widgets/navigation_item.dart';

class NavigationHeader extends StatelessWidget {
  const NavigationHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () {
                context.router.navigate(const DashboardRoute());
              },
              child: Image.asset(
                appLogoWithText,
                width: size200,
              )),
          Row(
            children: [
              NavigationItem(
                child: const Text(
                  'Home',
                  style: kHeader2TextStyle,
                ),
                onTap: () {
                  context.router.navigate(const DashboardRoute());
                },
              ),
              NavigationItem(
                child: const Text(
                  'Booking',
                  style: kHeader2TextStyle,
                ),
                onTap: () {
                  context.router.navigate(const BookingRoute());
                },
              ),
              NavigationItem(
                child: const Text(
                  'Finance',
                  style: kHeader2TextStyle,
                ),
                onTap: () {
                  context.router.navigate(const FinanceRoute());
                },
              ),
              NavigationItem(
                child: SvgPicture.asset(
                  messagesAsset,
                  height: size26,
                  width: size26,
                ),
                onTap: () {},
              ),
              NavigationItem(
                child: SvgPicture.asset(
                  bellAsset,
                  height: size26,
                  width: size26,
                ),
                onTap: () {},
              ),
              NavigationItem(
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/05/thor-recap-feature.jpg'),
                ),
                onTap: () {},
              ),
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
    );
  }
}
