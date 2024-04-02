import '../model/photo.dart';
import 'result.dart';

abstract interface class PhotoRepository {
  Future<Result<List<Photo>>> findPhotosByKeyword(String keyword);
}