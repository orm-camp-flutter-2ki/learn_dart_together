import 'package:learn_dart_together/240401/mapper/photoDtotoPhoto.dart';
import 'package:learn_dart_together/240401/model/photo.dart';
import 'package:learn_dart_together/240401/repository/photo_repository.dart';
import 'package:learn_dart_together/240401/result/result.dart';

import '../data_source/photo_api.dart';
import '../dto/photo_dto.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _client;

  PhotoRepositoryImpl({PhotoApi? client}) : _client = client ?? PhotoApi();

  @override
  Future<Result<List<Photo>>> getPhotos(String query) async {
    try {
      if (query == '바보') {
        return Result.error('비속어를 사용할 수 없습니다');
      }
      PhotoDto photoDto = await _client.getPhotos(query);
      Result<List<Photo>> movieList =
          Result.success(photoDto.hits!.map((e) => e.toPhoto()).toList());
      return movieList;
    } catch (e) {
      return Result.error("알 수 없는 네트워크 에러");
    }
  }
}
