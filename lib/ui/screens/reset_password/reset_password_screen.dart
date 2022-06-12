import 'package:flutter/material.dart';
import 'package:helloatty/ui/widgets/app_scaffold.dart';
import 'package:helloatty/ui/widgets/temp_container.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(),
      body: const TempContainer(title: 'ResetPasswordScreen'),
    );
  }
}
