import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helloatty/constants/app_assets.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/ui/widgets/app_buttons.dart';
import 'package:helloatty/ui/widgets/app_inputs.dart';

class LoginMobile extends StatefulWidget {
  const LoginMobile({Key? key}) : super(key: key);

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                      'Welcome Back',
                      style: kHeader1TextStyle,
                    ),
                    const SizedBox(
                      height: size10,
                    ),
                    const Text(
                      "Hello there, sign in to continue",
                      style: kHeader3TextStyle,
                    ),
                    const SizedBox(
                      height: size30,
                    ),
                    DefaultTextField(
                        controller: _emailController,
                        hintText: 'Email Address'),
                    DefaultTextField(
                      controller: _passwordController,
                      hintText: 'Password',
                      isObscureText: _showPassword,
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
                          _showPassword
                              ? Icons.remove_red_eye_rounded
                              : Icons.remove_red_eye_outlined,
                          color: kGrey,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: size10),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password',
                              style: kTitleTextStyle.copyWith(color: kRed),
                            )),
                      ),
                    ),
                    DefaultElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: kTitleTextStyle.copyWith(color: kWhite),
                      ),
                    ),
                    const SizedBox(
                      height: size30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  'Sign Up',
                                  style: kTitleTextStyle.copyWith(color: kRed),
                                ),
                                const SizedBox(
                                  width: size5,
                                ),
                                SvgPicture.asset(caretRightAsset)
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
              margin: const EdgeInsets.fromLTRB(0, size20, 0, 0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(loginImageBG),
                  fit: BoxFit.cover,
                ),
              )),
        ),
      ],
    );
  }
}
