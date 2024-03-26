import 'package:learn_dart_together/0326/model/photo_model.dart';
import 'package:learn_dart_together/0326/source/photo_api.dart';

import '../repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _photoApi = PhotoApi();

  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    return await _photoApi.getPhotosApi(albumId);
  }
}

void main() async {
  PhotoRepository photoRepository = PhotoRepositoryImpl();

  List<Photo> photos = await photoRepository.getPhotos(1);

  photos.forEach((print));
}
