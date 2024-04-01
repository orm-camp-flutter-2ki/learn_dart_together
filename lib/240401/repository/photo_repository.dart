import 'package:learn_dart_together/240401/data_source/photo_api.dart';
import 'package:learn_dart_together/240401/dto/photo_search_dto.dart';
import 'package:learn_dart_together/240401/mapper/photo_mapper.dart';
import 'package:learn_dart_together/240401/model/photo.dart';
import 'package:learn_dart_together/240401/model/result.dart';

abstract interface class PhotoRepository {
  Future<Result<List<Photo>>> getPhotos(String query);
}

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api;

  PhotoRepositoryImpl({PhotoApi? api}) : _api = api ?? PhotoApi();

  @override
  Future<Result<List<Photo>>> getPhotos(String query) async {
    try {
      final PhotoSearchDto photoSearchDto = await _api.getPhotoSearch(query);

      List<Photo> photoList = photoSearchDto.hits!.map((e) => e.toPhoto()).toList();

      if (query.contains('바보')) return Result.error('Error : 비속어를 사용할 수 없습니다');

      return Result.success(photoList);
    } catch (e) {
      return Result.error('Repository Error : 알 수 없는 네트워크 에러');
    }
  }
}