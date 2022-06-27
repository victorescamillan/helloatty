import 'package:flutter/material.dart';
import 'package:helloatty/ui/widgets/temp_container.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return const TempContainer(
      title: 'Messages',
    );
  }
}
