// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/next_screen.dart';
import '../screens/root_screen.dart';

class Routes {
  static const String rootScreen = '/';
  static const String nextScreen = '/next-screen';
  static const all = <String>{
    rootScreen,
    nextScreen,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.rootScreen, page: RootScreen),
    RouteDef(Routes.nextScreen, page: NextScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    RootScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RootScreen(),
        settings: data,
      );
    },
    NextScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NextScreen(),
        settings: data,
      );
    },
  };
}
