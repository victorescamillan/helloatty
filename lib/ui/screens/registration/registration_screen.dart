import 'package:flutter/material.dart';
import 'package:helloatty/enums/enums.dart';
import 'package:helloatty/ui/screens/registration/widgets/registration_form.dart';
import 'package:helloatty/ui/screens/registration/widgets/registration_header.dart';
import 'package:helloatty/ui/widgets/app_footer.dart';
import 'package:helloatty/ui/widgets/app_scaffold.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Column(
        children: const [
          RegistrationHeader(),
          Expanded(
              child: RegistrationForm(
            userType: UserType.lawyer,
          )),
          AppFooter()
        ],
      ),
    );
  }
}
