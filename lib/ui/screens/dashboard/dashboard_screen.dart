import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/ui/screens/dashboard/widgets/categories_section/categories_list.dart';
import 'package:helloatty/ui/screens/dashboard/widgets/lawyer_list_section/lawyer_list.dart';

import 'widgets/dashboard_section/dashboard.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: size100, vertical: size20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Dashboard(),
            SizedBox(
              height: size20,
            ),
            LawyerList(),
            SizedBox(
              height: size20,
            ),
            CategoriesList()
          ],
        ),
      ),
    );
  }
}
