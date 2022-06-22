import 'package:flutter/material.dart';
import 'package:helloatty/ui/widgets/temp_container.dart';

class MyScheduleScreen extends StatefulWidget {
  const MyScheduleScreen({Key? key}) : super(key: key);

  @override
  State<MyScheduleScreen> createState() => _MyScheduleScreenState();
}

class _MyScheduleScreenState extends State<MyScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return const TempContainer(
      title: 'My Schedule',
    );
  }
}
