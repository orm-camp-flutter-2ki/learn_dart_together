import 'package:learn_dart_together/24_04_01/repository/result.dart';

import '../model/photo.dart';

abstract interface class PhotoRepository {
  Future<Result<List<Photo>>> findPhotoByKeyword(String keyword);
}
