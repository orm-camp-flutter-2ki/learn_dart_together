import 'package:learn_dart_together/240401/data_source/photo_api.dart';
import 'package:learn_dart_together/240401/mapper/hit_mapper.dart';
import 'package:learn_dart_together/240401/model/hits.dart';
import 'package:learn_dart_together/240401/repository/photo_repository.dart';
import 'package:learn_dart_together/240401/result.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api;

  PhotoRepositoryImpl({PhotoApi? client}) : _api = client ?? PhotoApi();

  @override
  Future<Result<List<Hits>>> getPhotos(String query) async {
    if (query.contains('바보')) {
      return Result.error('비속어를 사용할 수 없습니다.');
    }
    try {
      final photoDto = await _api.getPhotos(query);
      final Result<List<Hits>> photoModel =
          Result.success(photoDto.map((e) => e.toHits()).toList());

      return photoModel;
    } catch (e) {
      return Result.error('네트워크 에러');
    }
  }
}
