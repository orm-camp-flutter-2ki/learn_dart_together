import 'package:learn_dart_together/24_04_01/data_source/photo_api.dart';
import 'package:learn_dart_together/24_04_01/mapper/photo_mapper.dart';
import 'package:learn_dart_together/24_04_01/model/photo.dart';
import 'package:learn_dart_together/24_04_01/repository/photo_repository.dart';
import 'package:learn_dart_together/24_04_01/repository/result.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api;

  PhotoRepositoryImpl({PhotoApi? api}) : _api = api ?? PhotoApi();

  @override
  Future<Result<List<Photo>>> findPhotoByKeyword(String keyword) async {
    final List<Photo> photos;
    try {
      if (keyword == '바보') {
        return Result.error('비속어를 사용할 수 없습니다');
        //A value of type 'Result<dynamic>' can't be returned from the method
        // 'findPhotoByKeyword' because it has a return type of 'Future<List<Photo>>'
      }
      final photoDtoList = await _api.getPhoto(keyword);
      photos = photoDtoList.map((e) => e.toPhoto()).toList();
      return Result.success(photos);
    } catch (e) {
      return Result.error('알 수 없는 네트워크 에러');
    }
  }
}
