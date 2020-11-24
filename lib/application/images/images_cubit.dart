import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_boilerplate/domain/images/image_failure.dart';
import 'package:flutter_boilerplate/infrastructure/images/image_dtos.dart';
import 'package:flutter_boilerplate/infrastructure/images/images_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'images_state.dart';

part 'images_cubit.freezed.dart';

class ImagesCubit extends Cubit<ImagesState> {
  final ImagesRepository _imagesRepository;

  ImagesCubit(this._imagesRepository) : super(ImagesState.initial());

  Future<void> fetchImage({
    @required String url,
  }) async {
    emit(ImagesState.fetching());

    Either<ImageFailure, ImageDto> failureOrSuccess =
        await _imagesRepository.fetchImage(url: url);

    failureOrSuccess.fold(
      (failure) {
        emit(ImagesState.failure(failure: failure));
      },
      (image) {
        emit(ImagesState.imageLoaded(image: image));
      },
    );
  }
}
