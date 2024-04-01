import 'package:learn_dart_together/240401/repository/result.dart';

import '../model/photo.dart';

abstract interface class PhotoRepository {
  Future<Result<List<Photo>, Exception>> getPhotos(String q);
}
