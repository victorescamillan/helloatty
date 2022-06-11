import 'package:flutter/material.dart';
import 'package:helloatty/ui/screens/signin/widgets/login_desktop.dart';
import 'package:helloatty/ui/screens/signin/widgets/login_mobile.dart';
import 'package:helloatty/ui/screens/signin/widgets/login_tablet.dart';
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
      return const LoginDesktop();
    } else if (Responsive.isTablet(context)) {
      return const LoginTablet();
    } else {
      return const LoginMobile();
    }
  }
}
