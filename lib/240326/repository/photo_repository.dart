import '../data_source/json_place_holder_api.dart';
import '../model/photo.dart';

abstract interface class AlbumRepository {
  Future<List<Photo>> getPhotos(int albumId);
}

class AlbumRepositoryImpl implements AlbumRepository {
  final _api = JsonPlaceHolderApi();

  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    final photos = await _api.getPhotos();
    return photos.where((e) => e.albumId == albumId).toList();
  }
}
