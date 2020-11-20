import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/ui/widgets/custom_button.dart';
import 'package:flutter_boilerplate/values/values.dart';

class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: CustomButton(
            onPressed: () {},
            title: StringConst.PROFILE,
          ),
        ),
      ),
    );
  }
}
