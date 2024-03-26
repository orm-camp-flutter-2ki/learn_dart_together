import '../model/03_photo.dart';

abstract interface class PhotoRepository {
  Future<Photo> getPhotos(int albumId);

}