import 'package:learn_dart_together/24_04_01/data_source/photo_api.dart';
import 'package:learn_dart_together/24_04_01/dto/photo_dto.dart';
import 'package:learn_dart_together/24_04_01/mapper/photo_mapper.dart';
import 'package:learn_dart_together/24_04_01/model/photo.dart';
import 'package:learn_dart_together/24_04_01/repository/photo_repository.dart';
import 'package:learn_dart_together/24_04_01/utils/result.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api;

  PhotoRepositoryImpl(this._api);

  @override
  Future<Result<List<Photo>>> getPhotos(String query) async {
    if (query == '바보') {
      return Result.error('비속어를 사용할 수 없습니다.');
    }
    try {
      PhotoDto photoById = await _api.getPhotos(query);
      Result<List<Photo>> results =
          Result.success(photoById.hits!.map((e) => e.toPhoto()).toList());

      return results;
    } catch (e) {
      return Result.error('네트워크 에러');
    }
  }
}