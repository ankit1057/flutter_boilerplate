import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';

@freezed
abstract class ImageData with _$ImageData {
  const factory ImageData({
    String name,
  }) = _ImageData;
}
