import 'package:learn_dart_together/24_04_01/model/photo.dart';
import 'package:learn_dart_together/24_04_01/model/result.dart';

abstract interface class PhotoRepository {
  Future<Result<List<Photo>>> getPhotos(String q);
}