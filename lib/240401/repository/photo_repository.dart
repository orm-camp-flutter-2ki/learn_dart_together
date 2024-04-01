import 'package:learn_dart_together/240401/mapper/result.dart';
import 'package:learn_dart_together/240401/model/photo/hit.dart';

abstract interface class PhotoRepository {
  Future<Result<List<Hit>>> getPhotos(String query);
}
