import 'package:flutter/material.dart';
import 'package:helloatty/ui/widgets/temp_container.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return TempContainer(
      title: 'Change Password',
    );
  }
}
