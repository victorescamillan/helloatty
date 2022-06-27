import 'package:flutter/material.dart';
import 'package:helloatty/ui/screens/my_schedule/widgets/my_schedule_widget.dart';
import 'package:helloatty/ui/widgets/main_container.dart';

class MyScheduleScreen extends StatefulWidget {
  const MyScheduleScreen({Key? key}) : super(key: key);

  @override
  State<MyScheduleScreen> createState() => _MyScheduleScreenState();
}

class _MyScheduleScreenState extends State<MyScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return const MainContainer(
        title: 'My Schedule', content: MyScheduleWidget());
  }
}
