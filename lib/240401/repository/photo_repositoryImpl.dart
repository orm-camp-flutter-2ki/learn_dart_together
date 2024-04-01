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
  Future<Result<List<Photo>>> getPhotos(String query) async {
    try {
      final List<HitsDto> photoDtoList = await _api.getPhoto(query);
      return Result.success(photoDtoList.map((e) => e.toPhoto()).toList());
    } on TimeoutException {
      return Result.error('Time out');
    } catch (e) {
      return Result.error('Network Error');
    }
  }
}
//예외 처리 (Result 패턴)
//try - catch 로 에러 검출시 “알 수 없는 네트워크 에러" 메시지를 리턴
//‘바보' 로 검색하면 “비속어를 사용할 수 없습니다" 메시지를 리턴
