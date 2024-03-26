

import 'package:untitled2/240326/data_source/photos_api.dart';
import 'package:untitled2/240326/repository/photos_repository.dart';
import '../model/photos.dart';

class PhotosRepositoryImpl implements PhotosRepository {

  @override
  Future<List<Photos>> getPhotos(int albumId) async {
    PhotosApi photosApi = PhotosApi();
    return photosApi.getPhotos();
  }
}