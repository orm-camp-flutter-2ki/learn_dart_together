import 'package:learn_dart_together/0326/model/photo.dart';

abstract interface class PhotoRepository {

  Future<List<Photo>> getPhotos(int albumId);
}