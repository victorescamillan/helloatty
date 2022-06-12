import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_texts.dart';
import 'package:helloatty/navigation/app_router.gr.dart';
import 'package:helloatty/ui/themes/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: appNameText,
      theme: defaultTheme,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
