// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:helloatty/ui/screens/booking/booking_screen.dart';
import 'package:helloatty/ui/screens/calendar/calendar_screen.dart';
import 'package:helloatty/ui/screens/change_password/change_password_screen.dart';
import 'package:helloatty/ui/screens/chat/messages_screen.dart';
import 'package:helloatty/ui/screens/dashboard/dashboard_screen.dart';
import 'package:helloatty/ui/screens/finance/finance_screen.dart';
import 'package:helloatty/ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:helloatty/ui/screens/home/home_screen.dart';
import 'package:helloatty/ui/screens/my_schedule/my_schedule_screen.dart';
import 'package:helloatty/ui/screens/notification/notification_screen.dart';
import 'package:helloatty/ui/screens/profile/edit_profile_screen.dart';
import 'package:helloatty/ui/screens/profile/profile_screen.dart';
import 'package:helloatty/ui/screens/registration/registration_screen.dart';
import 'package:helloatty/ui/screens/reset_password/reset_password_screen.dart';
import 'package:helloatty/ui/screens/signin/login_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginScreen, initial: true),
    AutoRoute(page: ResetPasswordScreen, path: 'reset-password'),
    AutoRoute(page: ForgotPasswordScreen, path: 'forgot-password'),
    AutoRoute(page: RegistrationScreen, path: 'register'),
    AutoRoute(page: HomeScreen, path: 'home', children: [
      AutoRoute(page: DashboardScreen, path: 'dashboard', initial: true),
      AutoRoute(page: CalendarScreen, path: 'calendar'),
      AutoRoute(page: MyScheduleScreen, path: 'my-schedule'),
      AutoRoute(page: BookingScreen, path: 'booking'),
      AutoRoute(page: FinanceScreen, path: 'finance'),
      AutoRoute(page: NotificationScreen, path: 'notifications'),
      AutoRoute(page: ProfileScreen, path: 'profile'),
      AutoRoute(page: MessagesScreen, path: 'messages'),
      AutoRoute(page: EditProfileScreen, path: 'edit-profile'),
      AutoRoute(page: ChangePasswordScreen, path: 'change-password'),
    ]),
  ],
)
class $AppRouter {}
