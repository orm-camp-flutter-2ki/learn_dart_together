import 'package:learn_dart_together/240401/model/photo.dart';
import 'package:learn_dart_together/240401/model/result.dart';

abstract interface class PhotoRepository {
  Future<Result<List<Photo>>> searchHitList(String query);
}
