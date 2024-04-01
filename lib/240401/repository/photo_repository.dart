import 'package:learn_dart_together/240329/model/movie.dart';

import '../model/photo.dart';
import '../result/result.dart';

abstract interface class PhotoRepository {
  Future<Result<List<Photo>>> getPhotos(String query);
}
