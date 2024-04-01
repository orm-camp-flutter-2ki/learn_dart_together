import 'dart:async';

import 'package:learn_dart_together/240401/data_source/photo_api.dart';
import 'package:learn_dart_together/240401/dto/photo_dto.dart';
import 'package:learn_dart_together/240401/mapper/photo_mapper.dart';
import 'package:learn_dart_together/240401/model/photo.dart';
import 'package:learn_dart_together/240401/repository/photo_repository.dart';
import 'package:learn_dart_together/240401/repository/result.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api;

  PhotoRepositoryImpl(this._api);

  @override
  Future<Result<List<Photo>, NetworkError>> getPhotos(String query) async {
    if (query != '바보') {
      try {
        final List<HitsDto> photoDtoList =
            await _api.getPhoto(query).timeout(Duration(seconds: 10));
        return Result.success(photoDtoList.map((e) => e.toPhoto()).toList());
      } on TimeoutException {
        return Result.error(NetworkError.requestTimeout);
      } catch (e) {
        throw Exception('알 수 없는 네트워크 에러');
      }
    } else {
      throw Exception('비속어를 사용할 수 없습니다');
    }
  }
}
