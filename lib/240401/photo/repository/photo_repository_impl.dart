import 'photo_repository.dart';
import '../data_source/photo_data_source.dart';
import '../model/photo.dart';
import '../dto/photo_dto.dart';
import '../mapper/photo_mapper.dart';
import '../result.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoDataSource _dataSource;

  PhotoRepositoryImpl(this._dataSource);

  // @override
  // Future<List<Photo>> getPhotos(String query) async {
  //   if (query != null) {
  //     final List<PhotoDto> photoDtoList = await _dataSource.getPhotos(query);
  //     return photoDtoList.map((e) => e.toPhoto()).toList();
  //   } else {
  //     throw Exception('에러');
  //   }
  // }

  @override
  // Future<Result<List<Photo>, Error>> getPhotos(String query) async {
  Future<Result<List<Photo>>> getPhotos(String query) async {
    try {
      if (query == '바보') {
        return Result.argumentError(Exception('비속어를 사용할 수 없습니다'));
      } else {
        final List<PhotoDto> photoDtoList = await _dataSource.getPhotos(query);
        final List<Photo> photos =
            photoDtoList.map((e) => e.toPhoto()).toList();
        return Result.success(photos);
      }
    } catch (e) {
      return Result.networkError(Exception('알 수 없는 네트워크 에러: $e'));
    }
  }
}
