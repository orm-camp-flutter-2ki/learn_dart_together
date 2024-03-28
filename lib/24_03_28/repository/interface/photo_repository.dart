import 'package:learn_dart_together/24_03_28/model/photo.dart';

abstract interface class PhotoRepository {
  Future<List<Photo>> getPhotos();
}
