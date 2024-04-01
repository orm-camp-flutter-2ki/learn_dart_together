import 'package:learn_dart_together/24_04_01/common/result.dart';
import 'package:learn_dart_together/24_04_01/model/photo.dart';

abstract interface class PhotoRepository<T, E> {
  Future<Result<List<Photo>, Exception>> getPhotos(
      List<String>? q, String? lang, String? imageType);
}
