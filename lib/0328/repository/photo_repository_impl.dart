import 'package:learn_dart_together/0328/model/photo.dart';
import 'package:learn_dart_together/0328/repository/photo_repository.dart';

import '../data_source/photo_api.dart';

class PhotoRepositoryImpl implements PhotoRepository {

  final PhotoApi _photoApi;

  PhotoRepositoryImpl({PhotoApi? photoApi}) : _photoApi = photoApi ?? PhotoApi();

  @override
  Future<List<Photo>> getPhotos() async {
    try {
      return await _photoApi.getPhoto();
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}