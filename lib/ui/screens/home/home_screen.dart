import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:helloatty/ui/screens/home/widgets/navigation_footer.dart';
import 'package:helloatty/ui/screens/home/widgets/navigation_header.dart';
import 'package:helloatty/ui/widgets/app_scaffold.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Column(
        children: const [
          NavigationHeader(),
          Expanded(child: AutoRouter()),
          NavigationFooter()
        ],
      ),
    );
  }
}
