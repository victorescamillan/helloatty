import 'package:flutter/material.dart';
import 'package:helloatty/ui/widgets/temp_container.dart';

class FinanceScreen extends StatefulWidget {
  const FinanceScreen({Key? key}) : super(key: key);

  @override
  State<FinanceScreen> createState() => _FinanceScreenState();
}

class _FinanceScreenState extends State<FinanceScreen> {
  @override
  Widget build(BuildContext context) {
    return const TempContainer(
      title: 'Finance',
    );
  }
}
