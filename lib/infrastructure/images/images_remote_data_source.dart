import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_boilerplate/domain/images/image_failure.dart';
import 'package:flutter_boilerplate/infrastructure/images/image_dtos.dart';
import 'package:flutter_boilerplate/values/values.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@injectable
class ImagesRemoteDataSource {
  final http.Client client;

  ImagesRemoteDataSource({
    @required this.client,
  });

  @override
  Future<ImageDto> fetchMoreImages({
    String url,
  }) async {
    return new Future.delayed(
      const Duration(seconds: 3),
      () => ImageDto(imageUrl: ImagePath.FLUTTER),
    );
    return ImageDto(imageUrl: ImagePath.GOOGLE_LOGO);
//    final response = await client.get(
//      StringConst.BASE_URL,
//      headers: <String, String>{
//        "Content-Type": "application/json; charset=UTF-8",
//      },
//    );
//
//    print("Status Code ${response.statusCode}");
//    print("Body ${response.body}");
//    if (response.statusCode == 200) {
//      try {
//        return ImageDto.fromJson(json.decode(response.body));
//      } catch (e) {
//        print(e.toString());
//        throw ImageFailure.serverError();
//      }
//    } else {
//      throw ImageFailure.serverError();
//    }
  }

  @override
  Future<int> fetchSomething() {
    // TODO: implement fetchSomething
    throw UnimplementedError();
  }
}
