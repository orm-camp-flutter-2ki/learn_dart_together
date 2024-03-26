import 'package:learn_dart_together/0326/model/photo_model.dart';
import 'package:learn_dart_together/0326/source/photo_api.dart';

import '../repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _photoApi = PhotoApi();

  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    return _photoApi.getPhotosApi(albumId);
  }
}
