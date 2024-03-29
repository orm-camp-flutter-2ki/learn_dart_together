import 'package:learn_dart_together/0328/model/photo.dart';

abstract interface class PhotoRepository {

  Future<List<Photo>> getPhotos();
}