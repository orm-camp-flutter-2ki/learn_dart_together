import 'package:learn_dart_together/24_03_26/apis/Photo_api.dart';
import 'package:learn_dart_together/24_03_26/model/photo.dart';
import 'package:learn_dart_together/24_03_26/repositories/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _photoApi;

  PhotoRepositoryImpl(this._photoApi);

  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    final photos = await _photoApi.getPhotos();

    return photos.where((element) => element.albumId == albumId).toList();
  }
}
