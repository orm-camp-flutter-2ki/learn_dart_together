import 'package:learn_dart_together/240328/model/photo.dart';
import 'package:learn_dart_together/240328/model/user.dart';

abstract interface class PhotoRepository {
  Future<List<Photo>> getPhotos();
}
