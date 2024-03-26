import 'package:learn_dart_together/240326/data_source/photo_api.dart';
import 'package:learn_dart_together/240326/model/photo.dart';
import 'package:learn_dart_together/240326/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  PhotoApi photoApi = PhotoApi();

  @override
  Future<List<Photo>> getPhotos(num albumId) async {
    final getData = await photoApi.getPhotos();
    final result =
        getData.where((element) => element.albumId == albumId).toList();

    return result;
  }
}
