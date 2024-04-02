import 'package:learn_dart_together/24_04_01/data_source/photo_api.dart';
import 'package:learn_dart_together/24_04_01/mapper/photo_mapper.dart';
import 'package:learn_dart_together/24_04_01/model/photo.dart';
import 'package:learn_dart_together/24_04_01/model/result.dart';
import 'package:learn_dart_together/24_04_01/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api = PhotoApi();

  @override
  Future<Result<List<Photo>>> getPhotos(String q) async {
    if (q == '바보') {
      return Result.error(('비속어를 사용할 수 없습니다.'));
    }
    try {
      final hitsDtoList = await _api.getPhotos(q);
      final photoList =
          hitsDtoList.map((hitsDto) => hitsDto.toPhoto()).toList();
      return Result.success(photoList);
    } catch (e) {
      return Result.error(('알 수 없는 네트워크 에러: $e'));
    }
  }
}
