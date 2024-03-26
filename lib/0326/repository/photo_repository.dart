import '../model/photo_model.dart';

abstract interface class PhotoRepository {
  // 특정 ID에 해당하는 데이터를 가져오는 메서드
  Future<List<Photo>> getPhotos(int albumId);
}