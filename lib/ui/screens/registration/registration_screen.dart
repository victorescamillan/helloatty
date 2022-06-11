import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:helloatty/ui/widgets/app_scaffold.dart';
import 'package:helloatty/ui/widgets/temp_container.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      body: TempContainer(
        title: 'RegistrationScreen',
      ),
    );
  }
}
