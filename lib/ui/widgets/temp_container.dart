import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TempContainer extends StatelessWidget {
  final String title;
  const TempContainer({Key? key, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('$title Page'));
  }
}
