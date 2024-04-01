import '../model/photo.dart';

abstract interface class PhotoRepository {
  Future<List<Photo>> getPhoto(String query);
}
