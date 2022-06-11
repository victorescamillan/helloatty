import 'package:flutter/material.dart';
import 'package:helloatty/ui/screens/signin/login_screen.dart';
import 'package:helloatty/ui/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: defaultTheme,
      home: const LoginScreen(),
    );
  }
}
