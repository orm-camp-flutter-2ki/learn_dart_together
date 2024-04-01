import 'package:learn_dart_together/24_04_01/dto/photo_response_dto.dart';

abstract interface class PhotoApi<T, E> {
  Future<PhotoResponseDto> getPhotos(String query);
}
