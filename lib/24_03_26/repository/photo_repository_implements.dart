import '../data_source/photo_api.dart';
import '../model/photo.dart';
import 'photo_repository.dart';

class PhotoRepositoryImplements implements PhotoRepository {
  final PhotoApi _api = PhotoApi();

  @override
  Future<List<Photo>> getPhotos(int albumId) {
    return _api.getPhotos(albumId);
  }
}
