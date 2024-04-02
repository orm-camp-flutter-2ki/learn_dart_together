import 'package:learn_dart_together/0401/common/exception/image_exception.dart';

import '../common/result.dart';
import '../model/photo.dart';

abstract interface class PhotoRepository {

  Future<Result<List<Photo>, ImageException>> getPhotos(String query);
}