import 'package:flutter/material.dart';
import 'package:helloatty/ui/widgets/temp_container.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return const TempContainer(title: 'Dashboard');
  }
}
