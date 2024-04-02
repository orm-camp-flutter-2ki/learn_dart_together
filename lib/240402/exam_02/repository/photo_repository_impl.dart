import 'package:learn_dart_together/240402/exam_02/mapper/photo_mapper.dart';
import 'package:learn_dart_together/240402/exam_02/model/photo.dart';
import 'package:learn_dart_together/240402/exam_02/repository/photo_repository.dart';
import 'package:learn_dart_together/240402/exam_02/result.dart';

import '../data_source/photo_data_source.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoDataSource _photoDataSource;

  PhotoRepositoryImpl(this._photoDataSource);

  @override
  Future<Result<List<Photo>>> getPhotos(String query) async {
    try {
      if (query.contains('바보')) {
        return Result.error('비속어를 사용할 수 없습니다');
      }

      final dto = await _photoDataSource.getPhotos(query);
      if (dto.hits == null) {
        return Result.error('hits null');
      }

      return Result.success(dto.hits!.map((e) => e.toPhoto()).toList());
    } catch (e) {
      return Result.error('알 수 없는 네트워크 에러');
    }
  }
}
