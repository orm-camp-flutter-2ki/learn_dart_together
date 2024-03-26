import 'package:learn_dart_together/240326/repository/photo_repository.dart';

import '../data_source/photo_api.dart';
import '../model/photo.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api = PhotoApi();

  @override
  Future<List<Photo>> getPhotos(int albumId) {
    return _api.getPhotos(albumId);
  }
}
