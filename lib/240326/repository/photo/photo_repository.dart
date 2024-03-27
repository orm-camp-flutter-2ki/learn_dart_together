import 'package:learn_dart_together/240326/repository/photo/photo.dart';

abstract interface class PhotoRepository {
  Future<List<Photo>> getPhotos(int albumId);
}