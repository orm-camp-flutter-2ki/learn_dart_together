import 'package:learn_dart_together/240326/model/photo.dart';

import '../data_source/photos_api.dart';

abstract interface class PhotoRepository {
  Future<List<Photo>> getPhotos(int albumId);
}

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotosApi _api = PhotosApi();

  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    List<Photo> data = await _api.getPhotos();
    return data.where((e) => e.albumId == albumId).toList();
  }
}

void main() async {
  List<Photo> photoList = await PhotoRepositoryImpl().getPhotos(2);
  print(photoList);
}
