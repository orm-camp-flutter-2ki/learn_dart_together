import '../data_source/photo_api.dart';
import '../model/photo.dart';
import 'photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api = PhotoApi();

  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    return await _api.getPhotos(albumId);
  }
}
