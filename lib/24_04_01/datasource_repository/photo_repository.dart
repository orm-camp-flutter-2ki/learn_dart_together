import 'package:learn_dart_together/24_04_01/datasource_repository/photo_api.dart';
import 'package:learn_dart_together/24_04_01/mapper/photo_mapper.dart';
import '../dto/photo_dto.dart';
import '../dto/photo_response.dart';

abstract interface class PhotoRepository {
  Future<PhotoResult> getPhotos(String keyword);
}

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api;

  PhotoRepositoryImpl({required api}):
      _api = api;

  @override
  Future<PhotoResult> getPhotos(String keyword) async {
    PhotoResult response = await _api.getPhotoDto(keyword);
    late final PhotoResult result;
    switch(response) {
      case Success _:
        result = PhotoResult.success((response.data as PhotoDto).hits?.map((e) => e.toPhoto()).toList() ?? []);
        break;
      case Error _:
        result = PhotoResult.error(response.e);
        break;
    }
    return result;
  }
}