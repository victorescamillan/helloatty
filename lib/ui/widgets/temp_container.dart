import 'package:flutter/material.dart';

class TempContainer extends StatelessWidget {
  final String title;
  const TempContainer({Key? key, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('$title Page'));
  }
}
