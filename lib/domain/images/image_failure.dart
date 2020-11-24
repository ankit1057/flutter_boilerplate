import 'package:flutter_boilerplate/domain/core/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_failure.freezed.dart';

@freezed
abstract class ImageFailure with _$ImageFailure implements Failure {
  // Serves as a "catch all" failure if we don't know what exactly went wrong
  const factory ImageFailure.serverError() = ServerError;

  const factory ImageFailure.networkError() = NetworkError;
}
