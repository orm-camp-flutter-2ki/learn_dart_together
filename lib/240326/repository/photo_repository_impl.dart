import 'package:learn_dart_together/240326/data_source/photo.dart';
import 'package:learn_dart_together/240326/model/photo_api.dart';
import 'package:learn_dart_together/240326/repository/photo_repository.dart';

class PhotoReposirotyImpl implements PhotoRepository {
  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    PhotoApi photoapi = PhotoApi();
    final photos = await photoapi.getPhotos();
    final albumIdPhoto = photos.where((e) => e.albumId == albumId).toList();
    return albumIdPhoto;
  }
}
