import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_dimens.dart';

final ThemeData defaultTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
).copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(size5))))));
