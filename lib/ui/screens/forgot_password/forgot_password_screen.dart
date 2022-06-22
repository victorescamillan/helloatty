import 'package:flutter/material.dart';
import 'package:helloatty/ui/screens/forgot_password/widgets/email_forgot_credentials.dart';
import 'package:helloatty/ui/widgets/app_scaffold.dart';
import 'package:helloatty/ui/widgets/auth_side_image.dart';
import 'package:helloatty/ui/widgets/temp_container.dart';
import 'package:helloatty/utils/response.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: _displayForgotPassword()
    );
  }

  _displayForgotPassword() {
    if (Responsive.isDesktop(context)) {
      return Row(
        children: const [
          Expanded(flex: 2, child: EmailForgotCredentials()),
          Expanded(flex: 4, child: AuthSideImage()),
        ],
      );
    } else if (Responsive.isTablet(context)) {
      return Row(
        children: const [
          Expanded(flex: 1, child: EmailForgotCredentials()),
          Expanded(flex: 1, child: AuthSideImage()),
        ],
      );
    } else {
      return Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              EmailForgotCredentials(),
            ],
          ),
        ),
      );
    }
  }
}
