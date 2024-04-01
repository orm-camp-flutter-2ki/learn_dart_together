import 'package:learn_dart_together/240401/model/hits.dart';
import 'package:learn_dart_together/240401/result.dart';

abstract interface class PhotoRepository {
  Future<Result<List<Hits>>> getPhotos(String query);
}
