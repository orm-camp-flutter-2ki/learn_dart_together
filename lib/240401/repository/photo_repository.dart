import 'package:dart_cli_practice/240401/model/photo.dart';
import 'package:dart_cli_practice/240401/repository/result.dart';

abstract interface class PhotoRepository {
  Future<Result<List<Photo>>> findPhotosByKeyword(String keyword);
}
