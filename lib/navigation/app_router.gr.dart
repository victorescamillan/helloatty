// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../ui/screens/forgot_password/forgot_password_screen.dart' as _i3;
import '../ui/screens/registration/registration_screen.dart' as _i4;
import '../ui/screens/reset_password/reset_password_screen.dart' as _i2;
import '../ui/screens/signin/login_screen.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginScreen());
    },
    ResetPasswordScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ResetPasswordScreen());
    },
    ForgotPasswordScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ForgotPasswordScreen());
    },
    RegistrationScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegistrationScreen());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(LoginScreen.name, path: '/'),
        _i5.RouteConfig(ResetPasswordScreen.name, path: 'reset-password'),
        _i5.RouteConfig(ForgotPasswordScreen.name, path: 'forgot-password'),
        _i5.RouteConfig(RegistrationScreen.name, path: 'register')
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginScreen extends _i5.PageRouteInfo<void> {
  const LoginScreen() : super(LoginScreen.name, path: '/');

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i2.ResetPasswordScreen]
class ResetPasswordScreen extends _i5.PageRouteInfo<void> {
  const ResetPasswordScreen()
      : super(ResetPasswordScreen.name, path: 'reset-password');

  static const String name = 'ResetPasswordScreen';
}

/// generated route for
/// [_i3.ForgotPasswordScreen]
class ForgotPasswordScreen extends _i5.PageRouteInfo<void> {
  const ForgotPasswordScreen()
      : super(ForgotPasswordScreen.name, path: 'forgot-password');

  static const String name = 'ForgotPasswordScreen';
}

/// generated route for
/// [_i4.RegistrationScreen]
class RegistrationScreen extends _i5.PageRouteInfo<void> {
  const RegistrationScreen() : super(RegistrationScreen.name, path: 'register');

  static const String name = 'RegistrationScreen';
}
