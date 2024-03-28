import 'package:learn_dart_together/240328/data_source/photo_api.dart';
import 'package:learn_dart_together/240328/mapper/photo/photo_mapper.dart';
import 'package:learn_dart_together/240328/model/photo/photo.dart';

abstract interface class PhotoRepository {
  Future<List<Photo>> getPhotos();
}

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api;

  PhotoRepositoryImpl({PhotoApi? api}) : _api = api ?? PhotoApi();

  @override
  Future<List<Photo>> getPhotos() async {
    try {
      final photoDtoList = await _api.getPhotos();

      return photoDtoList.map((dto) => dto.toPhoto()).toList();
    } catch (e) {
      print(e);
      return [];
    }
  }

}