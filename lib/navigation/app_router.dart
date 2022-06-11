// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:helloatty/ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:helloatty/ui/screens/registration/registration_screen.dart';
import 'package:helloatty/ui/screens/reset_password/reset_password_screen.dart';
import 'package:helloatty/ui/screens/signin/login_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginScreen, initial: true),
    AutoRoute(page: ResetPasswordScreen, path: 'reset-password'),
    AutoRoute(page: ForgotPasswordScreen, path: 'forgot-password'),
    AutoRoute(page: RegistrationScreen, path: 'register'),
  ],
)
class $AppRouter {}
