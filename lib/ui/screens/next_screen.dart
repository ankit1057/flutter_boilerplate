import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/values/values.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(Sizes.PADDING_8),
        child: Center(
          child: InkWell(
            onTap: () {
              ExtendedNavigator.root.pop();
            },
            child: Text(StringConst.ROOT_SCREEN),
          ),
        ),
      ),
    );
  }
}
