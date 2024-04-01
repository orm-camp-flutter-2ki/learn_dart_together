import 'package:learn_dart_together/24_04_01/datasource_repository/photo_api.dart';
import 'package:learn_dart_together/24_04_01/mapper/photo_mapper.dart';
import '../dto/photo_dto.dart';
import '../dto/photo_response.dart';
import '../model/photo.dart';

abstract interface class PhotoRepository {
  Future<PhotoResult<List<Photo>>> getPhotos(String keyword);
}

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api;

  PhotoRepositoryImpl({required api}):
      _api = api;

  @override
  Future<PhotoResult<List<Photo>>> getPhotos(String keyword) async {
    if (keyword.contains(slang)) {
      return PhotoResult.error(slangCensoredMessage);
    }
    late final PhotoResult<List<Photo>> result;
    try {
      PhotoResult<PhotoDto> response = await _api.getPhotoDto(keyword);

      switch(response) {
        case Success<PhotoDto>():
          result = PhotoResult.success(response.data.hits?.map((e) => e.toPhoto()).toList() ?? []);
          break;
        case Error<PhotoDto>():
          result = PhotoResult.error(response.e);
          break;
      }
    } catch (e) {
      result = PhotoResult.error(networkUndefinedErrorMessage);
    }
    return result;
  }
}