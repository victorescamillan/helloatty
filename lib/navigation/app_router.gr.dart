// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../ui/screens/booking/booking_screen.dart' as _i7;
import '../ui/screens/dashboard/dashboard_screen.dart' as _i6;
import '../ui/screens/finance/finance_screen.dart' as _i8;
import '../ui/screens/forgot_password/forgot_password_screen.dart' as _i3;
import '../ui/screens/home/home_screen.dart' as _i5;
import '../ui/screens/registration/registration_screen.dart' as _i4;
import '../ui/screens/reset_password/reset_password_screen.dart' as _i2;
import '../ui/screens/signin/login_screen.dart' as _i1;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginScreen());
    },
    ResetPasswordRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ResetPasswordScreen());
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ForgotPasswordScreen());
    },
    RegistrationRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegistrationScreen());
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomeScreen());
    },
    DashboardRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.DashboardScreen());
    },
    BookingRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.BookingScreen());
    },
    FinanceRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.FinanceScreen());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(LoginRoute.name, path: '/'),
        _i9.RouteConfig(ResetPasswordRoute.name, path: 'reset-password'),
        _i9.RouteConfig(ForgotPasswordRoute.name, path: 'forgot-password'),
        _i9.RouteConfig(RegistrationRoute.name, path: 'register'),
        _i9.RouteConfig(HomeRoute.name, path: 'home', children: [
          _i9.RouteConfig('#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'dashboard',
              fullMatch: true),
          _i9.RouteConfig(DashboardRoute.name,
              path: 'dashboard', parent: HomeRoute.name),
          _i9.RouteConfig(BookingRoute.name,
              path: 'booking', parent: HomeRoute.name),
          _i9.RouteConfig(FinanceRoute.name,
              path: 'finance', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.ResetPasswordScreen]
class ResetPasswordRoute extends _i9.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(ResetPasswordRoute.name, path: 'reset-password');

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i3.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i9.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(ForgotPasswordRoute.name, path: 'forgot-password');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i4.RegistrationScreen]
class RegistrationRoute extends _i9.PageRouteInfo<void> {
  const RegistrationRoute() : super(RegistrationRoute.name, path: 'register');

  static const String name = 'RegistrationRoute';
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(HomeRoute.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.DashboardScreen]
class DashboardRoute extends _i9.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: 'dashboard');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i7.BookingScreen]
class BookingRoute extends _i9.PageRouteInfo<void> {
  const BookingRoute() : super(BookingRoute.name, path: 'booking');

  static const String name = 'BookingRoute';
}

/// generated route for
/// [_i8.FinanceScreen]
class FinanceRoute extends _i9.PageRouteInfo<void> {
  const FinanceRoute() : super(FinanceRoute.name, path: 'finance');

  static const String name = 'FinanceRoute';
}
