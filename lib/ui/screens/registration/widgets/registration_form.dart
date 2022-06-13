import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/ui/widgets/app_inputs/bordered_textfield.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: size100, vertical: size20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Create Account',
            style: kHeader1TextStyle,
          ),
          Column(children: [
            Text('User Information'),
            BorderedTextField(
              hintText: 'Enter Name',
            )
          ]),
        ],
      ),
    );
  }
}
