import 'package:learn_dart_together/0401/data_source/photo_api.dart';
import 'package:learn_dart_together/0401/dto/mapper/photo_mapper.dart';
import 'package:learn_dart_together/0401/dto/photo_list_info_dto.dart';
import 'package:learn_dart_together/0401/model/photo.dart';
import 'package:learn_dart_together/0401/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {

  final PhotoApi _photoApi;

  PhotoRepositoryImpl({required PhotoApi photoApi}) : _photoApi = photoApi;

  @override
  Future<List<Photo>> getPhotos(String query) async {
    PhotoListInfoDto photoListInfoDto = await _photoApi.getPhotoListInfoDto(query);
    return photoListInfoDto.hits?.map((e) => e.toPhoto()).toList() ?? [];
  }
}