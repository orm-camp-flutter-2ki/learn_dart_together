import '../dto/photo_dto.dart';

abstract interface class PhotoApi {
  Future<List<PhotoDto>> getPhotosApi(String query);
}