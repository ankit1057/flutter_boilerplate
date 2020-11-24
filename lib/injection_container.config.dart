// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:http/http.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/images/images_cubit.dart';
import 'infrastructure/images/images_remote_data_source.dart';
import 'infrastructure/images/images_repository.dart';
import 'domain/core/network_info.dart';
import 'infrastructure/core/injectable_module.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerThirdPartyModules = _$RegisterThirdPartyModules();
  gh.lazySingleton<Client>(() => registerThirdPartyModules.client());
  gh.lazySingleton<DataConnectionChecker>(
      () => registerThirdPartyModules.dataConnectionChecker());
  gh.factory<ImagesRemoteDataSource>(
      () => ImagesRemoteDataSource(client: get<Client>()));
  gh.factory<NetworkInfo>(() => NetworkInfo(get<DataConnectionChecker>()));
  gh.factory<ImagesRepository>(() => ImagesRepository(
      imagesRemoteDataSource: get<ImagesRemoteDataSource>(),
      networkInfo: get<NetworkInfo>()));
  gh.factory<ImagesCubit>(() => ImagesCubit(get<ImagesRepository>()));
  return get;
}

class _$RegisterThirdPartyModules extends RegisterThirdPartyModules {}
