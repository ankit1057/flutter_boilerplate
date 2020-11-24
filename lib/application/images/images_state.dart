part of 'images_cubit.dart';

//@immutable
//abstract class ImagesState {}
//
//class ImagesInitial extends ImagesState {}
//
//class ImageLoading extends ImagesState {}
//
//class ImageLoaded extends ImagesState {}
//
//class FetchImageFailed extends ImagesState {}

@freezed
abstract class ImagesState with _$ImagesState {
  const factory ImagesState.initial() = Initial;

  const factory ImagesState.fetching() = Fetching;

  const factory ImagesState.failure({@required ImageFailure failure}) = Failure;

  const factory ImagesState.imageLoaded({
    @required ImageDto image,
  }) = ImageLoaded;
}
