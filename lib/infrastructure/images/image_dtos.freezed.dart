// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'image_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ImageDto _$ImageDtoFromJson(Map<String, dynamic> json) {
  return _ImageDto.fromJson(json);
}

/// @nodoc
class _$ImageDtoTearOff {
  const _$ImageDtoTearOff();

// ignore: unused_element
  _ImageDto call({@required String imageUrl}) {
    return _ImageDto(
      imageUrl: imageUrl,
    );
  }

// ignore: unused_element
  ImageDto fromJson(Map<String, Object> json) {
    return ImageDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ImageDto = _$ImageDtoTearOff();

/// @nodoc
mixin _$ImageDto {
  String get imageUrl;

  Map<String, dynamic> toJson();
  $ImageDtoCopyWith<ImageDto> get copyWith;
}

/// @nodoc
abstract class $ImageDtoCopyWith<$Res> {
  factory $ImageDtoCopyWith(ImageDto value, $Res Function(ImageDto) then) =
      _$ImageDtoCopyWithImpl<$Res>;
  $Res call({String imageUrl});
}

/// @nodoc
class _$ImageDtoCopyWithImpl<$Res> implements $ImageDtoCopyWith<$Res> {
  _$ImageDtoCopyWithImpl(this._value, this._then);

  final ImageDto _value;
  // ignore: unused_field
  final $Res Function(ImageDto) _then;

  @override
  $Res call({
    Object imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$ImageDtoCopyWith<$Res> implements $ImageDtoCopyWith<$Res> {
  factory _$ImageDtoCopyWith(_ImageDto value, $Res Function(_ImageDto) then) =
      __$ImageDtoCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl});
}

/// @nodoc
class __$ImageDtoCopyWithImpl<$Res> extends _$ImageDtoCopyWithImpl<$Res>
    implements _$ImageDtoCopyWith<$Res> {
  __$ImageDtoCopyWithImpl(_ImageDto _value, $Res Function(_ImageDto) _then)
      : super(_value, (v) => _then(v as _ImageDto));

  @override
  _ImageDto get _value => super._value as _ImageDto;

  @override
  $Res call({
    Object imageUrl = freezed,
  }) {
    return _then(_ImageDto(
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ImageDto implements _ImageDto {
  _$_ImageDto({@required this.imageUrl}) : assert(imageUrl != null);

  factory _$_ImageDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ImageDtoFromJson(json);

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ImageDto(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageDto &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageUrl);

  @override
  _$ImageDtoCopyWith<_ImageDto> get copyWith =>
      __$ImageDtoCopyWithImpl<_ImageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImageDtoToJson(this);
  }
}

abstract class _ImageDto implements ImageDto {
  factory _ImageDto({@required String imageUrl}) = _$_ImageDto;

  factory _ImageDto.fromJson(Map<String, dynamic> json) = _$_ImageDto.fromJson;

  @override
  String get imageUrl;
  @override
  _$ImageDtoCopyWith<_ImageDto> get copyWith;
}
