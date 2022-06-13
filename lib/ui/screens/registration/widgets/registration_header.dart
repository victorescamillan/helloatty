import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helloatty/constants/app_assets.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/navigation/app_router.gr.dart';
import 'package:helloatty/ui/widgets/navigation_item.dart';

class RegistrationHeader extends StatelessWidget {
  const RegistrationHeader({Key? key}) : super(key: key);

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
          NavigationItem(
            color: appColor,
            child: Row(
              children: [
                const Icon(
                  Icons.arrow_forward,
                  color: kWhite,
                ),
                Container(
                  height: size20,
                  width: size2,
                  color: kWhite,
                ),
                const SizedBox(
                  width: size15,
                ),
                Text(
                  'Login',
                  style: kHeader3TextStyle.copyWith(color: kWhite),
                ),
              ],
            ),
            onTap: () {
              context.router.pop();
            },
          ),
        ],
      ),
    );
  }
}
