import 'dart:convert';
import '../data_source/photo_api.dart';
import '../dto/photo_dto.dart';
import '../mapper/photo_mapper.dart';
import '../model/photo.dart';
import 'photo_repository.dart';
import 'result.dart';

class PhotoRepositoryImplement implements PhotoRepository {
  final PhotoApi _photoApi = PhotoApi();

  @override
  Future<Result<List<Photo>>> getPhotos(String query) async {
    if (query.toLowerCase().contains("바보")) {
      return Result.error(Exception("비속어를 사용할 수 없습니다"));
    }

    try {
      final response = await _photoApi.fetchPhotos(query); // 사진 정보 가져와서
      final result = json.decode(response); // 디코드 하고
      final photos = (result['hits'] as List) // 사용 가능한 형태로 바꾸기
          .map((e) => PhotoMapper.fromDto(PhotoDTO.fromJson(e)))
          .toList();
      return Result.success(photos); // 성공하면 보여주고
    } catch (e) {
      return Result.error(Exception("알 수 없는 네트워크 에러")); // 실패하면 유감
    }
  }
}
