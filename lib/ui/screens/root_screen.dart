import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/ui/routes/app_router.gr.dart';
import 'package:flutter_boilerplate/ui/widgets/custom_button.dart';
import 'package:flutter_boilerplate/values/values.dart';

class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: Sizes.HEIGHT_50,
            width: width * 0.7,
            child: CustomButton(
              color: AppColors.secondaryColor,
              onPressed: () {
                //To navigate to the next screen
                ExtendedNavigator.root.push(Routes.nextScreen);
              },
              title: StringConst.NEXT_SCREEN,
            ),
          ),
        ),
      ),
    );
  }
}
