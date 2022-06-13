import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_assets.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/navigation/app_router.gr.dart';
import 'package:helloatty/ui/widgets/app_buttons/default_button.dart';
import 'package:helloatty/ui/widgets/app_inputs/default_textfield.dart';

class EmailForgotCredentials extends StatefulWidget {
  const EmailForgotCredentials({Key? key}) : super(key: key);

  @override
  State<EmailForgotCredentials> createState() => _EmailForgotCredentialsState();
}

class _EmailForgotCredentialsState extends State<EmailForgotCredentials> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: size50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            appLogoWithText,
            width: size300,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: size50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Forgot Password',
                  style: kHeader1TextStyle,
                ),
                const SizedBox(
                  height: size10,
                ),
                const Text(
                  "Enter your Email Address and we will send you a link to reset your Password",
                  style: kHeader3TextStyle,
                ),
                const SizedBox(
                  height: size30,
                ),
                DefaultTextField(
                    controller: _emailController, hintText: 'Email Address'),
                DefaultElevatedButton(
                  onPressed: () {
                  },
                  child: Text(
                    'Send Link',
                    style: kTitleTextStyle.copyWith(color: kWhite),
                  ),
                ),
                const SizedBox(
                  height: size30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
