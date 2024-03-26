

import '../model/photos.dart';

abstract interface class PhotosRepository {
  Future<List<Photos>> getPhotos(int albumId);
}