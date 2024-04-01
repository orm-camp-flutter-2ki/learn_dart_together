import 'package:dart_cli_practice/240401/data_source/photo_api.dart';
import 'package:dart_cli_practice/240401/mapper/photo_mapper.dart';
import 'package:dart_cli_practice/240401/model/photo.dart';
import 'package:dart_cli_practice/240401/repository/photo_repository.dart';
import 'package:dart_cli_practice/240401/repository/result.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api;

  PhotoRepositoryImpl({required PhotoApi api}) : _api = api ?? PhotoApi();

  @override
  Future<Result<List<Photo>>> findPhotosByKeyword(String keyword) async {
    final List<Photo> photos;
    try {
      if (keyword == '바보') {
        return Result.error('비속어를 사용할 수 없습니다');
      }

      final photoDtoList = await _api.getPhotos(keyword);
      photos = photoDtoList.map((e) => e.toPhoto()).toList();

      return Result.success(photos);
    } catch (e) {
      return Result.error('알 수 없는 네트워크 에러');
    }
  }
}
