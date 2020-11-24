import 'dart:io';

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@module
abstract class RegisterThirdPartyModules {
  @lazySingleton
  DataConnectionChecker dataConnectionChecker() => DataConnectionChecker();

  @lazySingleton
  http.Client client() => http.Client();
}
