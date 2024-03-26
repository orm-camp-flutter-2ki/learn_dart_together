import '../model_class/02_photo_class.dart';

abstract interface class photoRepository {
  Future<List<Photo>> getPhotos(int albumId);
}
