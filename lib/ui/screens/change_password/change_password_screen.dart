import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/constants/app_texts.dart';
import 'package:helloatty/ui/screens/profile/widgets/profile_container.dart';
import 'package:helloatty/ui/widgets/app_buttons/default_button.dart';
import 'package:helloatty/ui/widgets/app_buttons/default_outlined_button.dart';
import 'package:helloatty/ui/widgets/app_inputs/bordered_textfield.dart';
import 'package:helloatty/ui/widgets/temp_container.dart';
import 'package:helloatty/utils/utils.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    double inputWidth = appSize(context).width / 2.5;
    return ProfileContainer(
        title: 'Change Password',
        content: Padding(
          padding: const EdgeInsets.all(size20),
          child: Column(
            children: [_password(inputWidth), _actionButtons()],
          ),
        ));
  }

  _password(double inputWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: size50,
        ),
        Text(
          'PASSWORD',
          style: kHeader1TextStyle.copyWith(
              color: appColor, fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: size10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BorderedTextField(
                label: 'Current Password',
                hintText: enterPasswordText,
                width: inputWidth,
                isObscureText: true,
                horizontalPadding: size20,
                suffixIcon: IconButton(
                  onPressed: () {},
                  splashRadius: size20,
                  icon: const Icon(
                    Icons.remove_red_eye_rounded,
                    color: kGrey,
                  ),
                )),
            const SizedBox(
              width: size20,
            ),
            BorderedTextField(
                label: 'New Password',
                hintText: enterPasswordText,
                width: inputWidth,
                isObscureText: true,
                horizontalPadding: size20,
                suffixIcon: IconButton(
                  onPressed: () {},
                  splashRadius: size20,
                  icon: const Icon(
                    Icons.remove_red_eye_rounded,
                    color: kGrey,
                  ),
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BorderedTextField(
                label: 'Confirm Password',
                hintText: enterPasswordText,
                width: inputWidth,
                isObscureText: true,
                horizontalPadding: size20,
                suffixIcon: IconButton(
                  onPressed: () {},
                  splashRadius: size20,
                  icon: const Icon(
                    Icons.remove_red_eye_rounded,
                    color: kGrey,
                  ),
                )),
            const SizedBox(
              width: size20,
            ),
            Expanded(child: Container()),
          ],
        ),
      ],
    );
  }

  _actionButtons() {
    return Row(
      children: [
        DefaultElevatedButton(
          onPressed: () {},
          width: size200,
          child: Text(
            'Update Password',
            style: kTitleTextStyle.copyWith(color: kWhite),
          ),
        ),
        const SizedBox(
          width: size20,
        ),
        DefaultOutlinedButton(
          onPressed: () {},
          width: size200,
          child: Text(
            cancelText,
            style: kTitleTextStyle.copyWith(color: appColor),
          ),
        )
      ],
    );
  }
}
