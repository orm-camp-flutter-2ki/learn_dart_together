import '../data_source/photo_api.dart';
import '../model_class/02_photo_class.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api = PhotoApi();

  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    List<Photo> data = await _api.getPhotos();
    return data.where((element) => element.albumId == albumId).toList();
  }
}