import '../model/photo.dart';
import 'result.dart';

abstract class PhotoRepository {
  Future<Result<List<Photo>>> getPhotos(String query); // 장표에 있던 구현해야하는 메서드
}
