import '../dto/photo_respone.dart';
import '../model/photo.dart';

abstract interface class PhotoRepository {
  Future<PhotoRespone<List<Photo>>> getPhoto(String query);
}
