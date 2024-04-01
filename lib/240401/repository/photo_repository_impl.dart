import 'package:dart_cli_practice/240401/data_source/photo_api.dart';
import 'package:dart_cli_practice/240401/data_source/photo_api_impl.dart';
import 'package:dart_cli_practice/240401/mapper/photo_mapper.dart';
import 'package:dart_cli_practice/240401/model/photo.dart';
import 'package:dart_cli_practice/240401/repository/photo_repository.dart';
import 'package:dart_cli_practice/240401/repository/photo_result.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api;

  PhotoRepositoryImpl({PhotoApi? api}) : _api = api ?? PhotoApiImpl();

  @override
  Future<PhotoResult<List<Photo>>> findPhotosByKeyword(String keyword) async {
    final List<Photo> photos;
    try {
      if (keyword == '바보') {
        return PhotoResult.error('비속어를 사용할 수 없습니다');
      }

      final photoDtoList = await _api.getPhotos(keyword);
      photos = photoDtoList.map((e) => e.toPhoto()).toList();

      return PhotoResult.success(photos);
    } catch (e) {
      return PhotoResult.error('알 수 없는 네트워크 에러');
    }
  }
}
