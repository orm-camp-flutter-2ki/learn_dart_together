import 'package:learn_dart_together/24_03_28/model/photo.dart';

abstract interface class PhotoApi {
  Future<List<Photo>> getPhotos();
}
