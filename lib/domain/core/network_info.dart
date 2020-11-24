import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';

@injectable
class NetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfo(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
