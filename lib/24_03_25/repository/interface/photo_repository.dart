import '../../model/photo_model.dart';

abstract interface class PhotoRepository {
  Future<List<PhotoModel>> getPhotos(int albumId);
}