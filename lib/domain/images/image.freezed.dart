// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ImageDataTearOff {
  const _$ImageDataTearOff();

// ignore: unused_element
  _ImageData call({String name}) {
    return _ImageData(
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ImageData = _$ImageDataTearOff();

/// @nodoc
mixin _$ImageData {
  String get name;

  $ImageDataCopyWith<ImageData> get copyWith;
}

/// @nodoc
abstract class $ImageDataCopyWith<$Res> {
  factory $ImageDataCopyWith(ImageData value, $Res Function(ImageData) then) =
      _$ImageDataCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$ImageDataCopyWithImpl<$Res> implements $ImageDataCopyWith<$Res> {
  _$ImageDataCopyWithImpl(this._value, this._then);

  final ImageData _value;
  // ignore: unused_field
  final $Res Function(ImageData) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$ImageDataCopyWith<$Res> implements $ImageDataCopyWith<$Res> {
  factory _$ImageDataCopyWith(
          _ImageData value, $Res Function(_ImageData) then) =
      __$ImageDataCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$ImageDataCopyWithImpl<$Res> extends _$ImageDataCopyWithImpl<$Res>
    implements _$ImageDataCopyWith<$Res> {
  __$ImageDataCopyWithImpl(_ImageData _value, $Res Function(_ImageData) _then)
      : super(_value, (v) => _then(v as _ImageData));

  @override
  _ImageData get _value => super._value as _ImageData;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_ImageData(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_ImageData with DiagnosticableTreeMixin implements _ImageData {
  const _$_ImageData({this.name});

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageData(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageData'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageData &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$ImageDataCopyWith<_ImageData> get copyWith =>
      __$ImageDataCopyWithImpl<_ImageData>(this, _$identity);
}

abstract class _ImageData implements ImageData {
  const factory _ImageData({String name}) = _$_ImageData;

  @override
  String get name;
  @override
  _$ImageDataCopyWith<_ImageData> get copyWith;
}
