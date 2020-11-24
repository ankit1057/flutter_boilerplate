import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_dtos.freezed.dart';

part 'image_dtos.g.dart';

@freezed
abstract class ImageDto with _$ImageDto {
  factory ImageDto({
    @required String imageUrl,
  }) = _ImageDto;

  factory ImageDto.fromJson(Map<String, Object> json) =>
      _$ImageDtoFromJson(json);
}
