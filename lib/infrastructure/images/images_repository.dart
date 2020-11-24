import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_boilerplate/domain/core/failures.dart';
import 'package:flutter_boilerplate/domain/core/network_info.dart';
import 'package:flutter_boilerplate/domain/images/image_failure.dart';
import 'package:flutter_boilerplate/infrastructure/images/image_dtos.dart';

import 'images_remote_data_source.dart';

class ImagesRepository {
  ImagesRemoteDataSource imagesRemoteDataSource;
  NetworkInfo networkInfo;

  ImagesRepository({
    @required this.imagesRemoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<ImageFailure, ImageDto>> fetchImage({
    @required String url,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final image = await imagesRemoteDataSource.fetchMoreImages(url: url);
        return Right(image);
      } catch (e) {
        print(e.toString());
        if (e == ImageFailure.networkError()) {
          return Left(ImageFailure.networkError());
        } else {
          return Left(ImageFailure.serverError());
        }
      }
    } else {
      throw NoInternetConnectionFailure();
    }
  }
}
