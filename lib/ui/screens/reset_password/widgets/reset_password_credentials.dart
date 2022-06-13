import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_assets.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/navigation/app_router.gr.dart';
import 'package:helloatty/ui/widgets/app_buttons/default_button.dart';
import 'package:helloatty/ui/widgets/app_inputs/default_textfield.dart';

class ResetPasswordCredentials extends StatefulWidget {
  const ResetPasswordCredentials({Key? key}) : super(key: key);

  @override
  State<ResetPasswordCredentials> createState() => _ResetPasswordCredentialsState();
}

class _ResetPasswordCredentialsState extends State<ResetPasswordCredentials> {
  final _passwordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  bool _showPassword = false;
  bool _showNewPassword = false;

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
                  'Reset Password',
                  style: kHeader1TextStyle,
                ),
                const SizedBox(
                  height: size10,
                ),
                const Text(
                  "Enter your new password",
                  style: kHeader3TextStyle,
                ),
                const SizedBox(
                  height: size30,
                ),
                DefaultTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  isObscureText: !_showPassword,
                  suffixIcon: IconButton(
                    onPressed: () {
                      if (_passwordController.text == '') {
                        return;
                      }
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                    splashRadius: size20,
                    icon: Icon(
                      !_showPassword
                          ? Icons.remove_red_eye_rounded
                          : Icons.remove_red_eye_outlined,
                      color: kGrey,
                    ),
                  ),
                ),
                DefaultTextField(
                  controller: _newPasswordController,
                  hintText: 'New Password',
                  isObscureText: !_showNewPassword,
                  suffixIcon: IconButton(
                    onPressed: () {
                      if (_newPasswordController.text == '') {
                        return;
                      }
                      setState(() {
                        _showNewPassword = !_showNewPassword;
                      });
                    },
                    splashRadius: size20,
                    icon: Icon(
                      !_showNewPassword
                          ? Icons.remove_red_eye_rounded
                          : Icons.remove_red_eye_outlined,
                      color: kGrey,
                    ),
                  ),
                ),
                DefaultElevatedButton(
                  onPressed: () {
                    context.router.replace(const LoginRoute());
                  },
                  child: Text(
                    'Reset Password',
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
