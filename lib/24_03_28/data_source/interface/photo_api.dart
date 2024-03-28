import 'package:learn_dart_together/24_03_28/dto/photo_dto.dart';

abstract interface class PhotoApi {
  Future<List<PhotoDto>> getPhotos();
}
