import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/values/values.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(StringConst.PROFILE),
        ),
      ),
    );
  }
}
