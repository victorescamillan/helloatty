import 'package:flutter/material.dart';
import 'package:helloatty/ui/screens/reset_password/widgets/reset_password_credentials.dart';
import 'package:helloatty/ui/widgets/app_scaffold.dart';
import 'package:helloatty/ui/widgets/auth_side_image.dart';
import 'package:helloatty/ui/widgets/temp_container.dart';
import 'package:helloatty/utils/response.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: _displayResetPassword()
    );
  }

  _displayResetPassword() {
    if (Responsive.isDesktop(context)) {
      return Row(
        children: const [
          Expanded(flex: 2, child: ResetPasswordCredentials()),
          Expanded(flex: 4, child: AuthSideImage()),
        ],
      );
    } else if (Responsive.isTablet(context)) {
      return Row(
        children: const [
          Expanded(flex: 1, child: ResetPasswordCredentials()),
          Expanded(flex: 1, child: AuthSideImage()),
        ],
      );
    } else {
      return Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              ResetPasswordCredentials(),
            ],
          ),
        ),
      );
    }
  }
}
