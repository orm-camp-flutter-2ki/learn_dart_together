import '../model/photo.dart';

abstract class PhotoRepository {
  Future<List<Photo>> getPhotos(num albumId);
}