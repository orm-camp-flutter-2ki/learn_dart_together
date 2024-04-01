import 'package:dart_cli_practice/240401/model/photo.dart';
import 'package:dart_cli_practice/240401/repository/photo_result.dart';

abstract interface class PhotoRepository {
  Future<PhotoResult<List<Photo>>> findPhotosByKeyword(String keyword);
}
