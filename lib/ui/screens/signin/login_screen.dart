import 'package:flutter/material.dart';
import 'package:helloatty/ui/screens/signin/widgets/login_credentials.dart';
import 'package:helloatty/ui/screens/signin/widgets/login_image.dart';
import 'package:helloatty/ui/widgets/app_scaffold.dart';
import 'package:helloatty/utils/response.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: _displayLogin(),
    );
  }

  _displayLogin() {
    if (Responsive.isDesktop(context)) {
      return Row(
        children: const [
          Expanded(flex: 2, child: LoginCredentials()),
          Expanded(flex: 4, child: LoginImage()),
        ],
      );
    } else if (Responsive.isTablet(context)) {
      return Row(
        children: const [
          Expanded(flex: 1, child: LoginCredentials()),
          Expanded(flex: 1, child: LoginImage()),
        ],
      );
    } else {
      return Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              LoginCredentials(),
            ],
          ),
        ),
      );
    }
  }
}
