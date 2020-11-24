import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/application/images/images_cubit.dart';
import 'package:flutter_boilerplate/ui/widgets/spaces.dart';

import '../../injection_container.dart';

class NextScreen extends StatefulWidget {
  @override
  _NextScreenState createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  ImagesCubit _imagesCubit;

  int currentValue = 0;

  @override
  void initState() {
    _imagesCubit = getIt<ImagesCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: BlocBuilder<ImagesCubit, ImagesState>(
              cubit: _imagesCubit,
              builder: (context, state) {
                return state.map(initial: (_) {
                  return Text("Tap Fab to load Image");
                }, fetching: (_) {
                  return CircularProgressIndicator();
                }, failure: (_) {
                  return Text("Something went wrong, Tap to reload!");
                }, imageLoaded: (data) {
                  return Image.asset(
                    data.image.imageUrl,
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  );
                });
              },
            ),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.arrow_back),
            onPressed: () {
              ExtendedNavigator.root.pop();
            },
            heroTag: null,
          ),
          SpaceH16(),
          FloatingActionButton(
            child: Icon(Icons.cloud_download),
            onPressed: onImageLoadPress,
            heroTag: null,
          ),
        ],
      ),
    );
  }

  void onImageLoadPress() {
    _imagesCubit.fetchImage(url: "dummy Image");
  }
}
