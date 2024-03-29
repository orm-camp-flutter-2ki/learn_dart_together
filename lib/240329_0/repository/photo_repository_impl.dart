import 'package:learn_dart_together/240329_0/data_source/photo_api.dart';
import 'package:learn_dart_together/240329_0/dto/photo_dto.dart';
import 'package:learn_dart_together/240329_0/mapper/photo_mapper.dart';
import 'package:learn_dart_together/240329_0/model/photo.dart';
import 'package:learn_dart_together/240329_0/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api;

  PhotoRepositoryImpl(this._api);

  @override
  Future<List<Photo>> getPhotos() async {
    final List<PhotoDto> photoDtoList = await _api.getPhotoDtoList();
    return photoDtoList.map((e) => e.toPhoto()).toList();
  }
}
