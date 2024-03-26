import 'package:learn_dart_together/240326/data_source/photo_api.dart';
import 'package:learn_dart_together/240326/model/photo.dart';

abstract interface class PhotoRepository {
  Future<List<Photo>> getPhotos();

  Future<Photo> getPhoto(int id);
}

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api = PhotoApi();

  @override
  Future<List<Photo>> getPhotos() {
    return _api.getPhotos();
  }

  Future<List<Photo>> getPhotosAlbum(int albumId) async {
    return _api.getPhotosAlbum(albumId);
  }

  @override
  Future<Photo> getPhoto(int id) {
    return _api.getPhoto(id);
  }
}
