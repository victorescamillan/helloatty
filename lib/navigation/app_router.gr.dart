// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;

import '../ui/screens/booking/booking_screen.dart' as _i9;
import '../ui/screens/calendar/calendar_screen.dart' as _i7;
import '../ui/screens/change_password/change_password_screen.dart' as _i14;
import '../ui/screens/dashboard/dashboard_screen.dart' as _i6;
import '../ui/screens/finance/finance_screen.dart' as _i10;
import '../ui/screens/forgot_password/forgot_password_screen.dart' as _i3;
import '../ui/screens/home/home_screen.dart' as _i5;
import '../ui/screens/my_schedule/my_schedule_screen.dart' as _i8;
import '../ui/screens/notification/notification_screen.dart' as _i11;
import '../ui/screens/profile/edit_profile_screen.dart' as _i13;
import '../ui/screens/profile/profile_screen.dart' as _i12;
import '../ui/screens/registration/registration_screen.dart' as _i4;
import '../ui/screens/reset_password/reset_password_screen.dart' as _i2;
import '../ui/screens/signin/login_screen.dart' as _i1;

class AppRouter extends _i15.RootStackRouter {
  AppRouter([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginScreen());
    },
    ResetPasswordRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ResetPasswordScreen());
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ForgotPasswordScreen());
    },
    RegistrationRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegistrationScreen());
    },
    HomeRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomeScreen());
    },
    DashboardRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.DashboardScreen());
    },
    CalendarRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CalendarScreen());
    },
    MyScheduleRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.MyScheduleScreen());
    },
    BookingRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.BookingScreen());
    },
    FinanceRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.FinanceScreen());
    },
    NotificationRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.NotificationScreen());
    },
    ProfileRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.ProfileScreen());
    },
    EditProfileRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.EditProfileScreen());
    },
    ChangePasswordRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.ChangePasswordScreen());
    }
  };

  @override
  List<_i15.RouteConfig> get routes => [
        _i15.RouteConfig(LoginRoute.name, path: '/'),
        _i15.RouteConfig(ResetPasswordRoute.name, path: 'reset-password'),
        _i15.RouteConfig(ForgotPasswordRoute.name, path: 'forgot-password'),
        _i15.RouteConfig(RegistrationRoute.name, path: 'register'),
        _i15.RouteConfig(HomeRoute.name, path: 'home', children: [
          _i15.RouteConfig('#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'dashboard',
              fullMatch: true),
          _i15.RouteConfig(DashboardRoute.name,
              path: 'dashboard', parent: HomeRoute.name),
          _i15.RouteConfig(CalendarRoute.name,
              path: 'calendar', parent: HomeRoute.name),
          _i15.RouteConfig(MyScheduleRoute.name,
              path: 'my-schedule', parent: HomeRoute.name),
          _i15.RouteConfig(BookingRoute.name,
              path: 'booking', parent: HomeRoute.name),
          _i15.RouteConfig(FinanceRoute.name,
              path: 'finance', parent: HomeRoute.name),
          _i15.RouteConfig(NotificationRoute.name,
              path: 'notifications', parent: HomeRoute.name),
          _i15.RouteConfig(ProfileRoute.name,
              path: 'profile', parent: HomeRoute.name),
          _i15.RouteConfig(EditProfileRoute.name,
              path: 'edit-profile', parent: HomeRoute.name),
          _i15.RouteConfig(ChangePasswordRoute.name,
              path: 'change-password', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginRoute extends _i15.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.ResetPasswordScreen]
class ResetPasswordRoute extends _i15.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(ResetPasswordRoute.name, path: 'reset-password');

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i3.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i15.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(ForgotPasswordRoute.name, path: 'forgot-password');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i4.RegistrationScreen]
class RegistrationRoute extends _i15.PageRouteInfo<void> {
  const RegistrationRoute() : super(RegistrationRoute.name, path: 'register');

  static const String name = 'RegistrationRoute';
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
      : super(HomeRoute.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.DashboardScreen]
class DashboardRoute extends _i15.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: 'dashboard');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i7.CalendarScreen]
class CalendarRoute extends _i15.PageRouteInfo<void> {
  const CalendarRoute() : super(CalendarRoute.name, path: 'calendar');

  static const String name = 'CalendarRoute';
}

/// generated route for
/// [_i8.MyScheduleScreen]
class MyScheduleRoute extends _i15.PageRouteInfo<void> {
  const MyScheduleRoute() : super(MyScheduleRoute.name, path: 'my-schedule');

  static const String name = 'MyScheduleRoute';
}

/// generated route for
/// [_i9.BookingScreen]
class BookingRoute extends _i15.PageRouteInfo<void> {
  const BookingRoute() : super(BookingRoute.name, path: 'booking');

  static const String name = 'BookingRoute';
}

/// generated route for
/// [_i10.FinanceScreen]
class FinanceRoute extends _i15.PageRouteInfo<void> {
  const FinanceRoute() : super(FinanceRoute.name, path: 'finance');

  static const String name = 'FinanceRoute';
}

/// generated route for
/// [_i11.NotificationScreen]
class NotificationRoute extends _i15.PageRouteInfo<void> {
  const NotificationRoute()
      : super(NotificationRoute.name, path: 'notifications');

  static const String name = 'NotificationRoute';
}

/// generated route for
/// [_i12.ProfileScreen]
class ProfileRoute extends _i15.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i13.EditProfileScreen]
class EditProfileRoute extends _i15.PageRouteInfo<void> {
  const EditProfileRoute() : super(EditProfileRoute.name, path: 'edit-profile');

  static const String name = 'EditProfileRoute';
}

/// generated route for
/// [_i14.ChangePasswordScreen]
class ChangePasswordRoute extends _i15.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(ChangePasswordRoute.name, path: 'change-password');

  static const String name = 'ChangePasswordRoute';
}
