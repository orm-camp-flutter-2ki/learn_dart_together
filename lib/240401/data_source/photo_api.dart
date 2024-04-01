import 'package:dart_cli_practice/240401/dto/photo_dto.dart';

abstract interface class PhotoApi {
  Future<List<PhotoDto>> getPhotos(String keyword);
}
