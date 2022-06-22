import 'package:flutter/material.dart';
import 'package:helloatty/ui/widgets/temp_container.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return TempContainer(
      title: 'Notifications',
    );
  }
}
