import './api/Photo_api.dart';
import './model/photo.dart';

void main() async {
  List<Photo> photoList = await PhotoRepositoryImpl().getPhotos(4);
}

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api = PhotoApi();

  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    List<Photo> data = await _api.getPhotos();
    return data.where((element) => element.albumId == albumId).toList();
  }
}

abstract interface class PhotoRepository {
  Future<List<Photo>> getPhotos(int albumId);
}
