import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_assets.dart';

class LoginImage extends StatelessWidget {
  const LoginImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(loginImageBG),
        fit: BoxFit.cover,
      ),
    ));
  }
}
