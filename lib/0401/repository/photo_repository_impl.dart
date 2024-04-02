import 'package:learn_dart_together/0401/common/exception/image_exception.dart';
import 'package:learn_dart_together/0401/common/exception/photo_exception.dart';
import 'package:learn_dart_together/0401/data_source/photo_api.dart';
import 'package:learn_dart_together/0401/dto/mapper/photo_mapper.dart';
import 'package:learn_dart_together/0401/dto/photo_list_info_dto.dart';
import 'package:learn_dart_together/0401/model/photo.dart';
import 'package:learn_dart_together/0401/repository/photo_repository.dart';

import '../common/response/error_code.dart';
import '../common/result.dart';

class PhotoRepositoryImpl implements PhotoRepository {

  final PhotoApi _photoApi;

  PhotoRepositoryImpl({required PhotoApi photoApi}) : _photoApi = photoApi;

  @override
  Future<Result<List<Photo>, ImageException>> getPhotos(String query) async {
    if (query.contains('바보')) {
      return Result.error(PhotoException(errorCode: ErrorCode.usedWrongLanguage));
    }

    try {
      PhotoListInfoDto photoListInfoDto = await _photoApi.getPhotoListInfoDto(query);
      return Result.success(photoListInfoDto.hits?.map((e) => e.toPhoto()).toList() ?? []);

    } catch (e, s) {
      return Result.error(PhotoException(errorCode: ErrorCode.unknownNetworkError, exception: e, stackTrace: s));
    }
  }
}