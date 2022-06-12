import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget? body;
  final PreferredSizeWidget? appBar;
  const AppScaffold({Key? key, this.appBar, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }
}
