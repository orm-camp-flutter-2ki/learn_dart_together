import 'package:learn_dart_together/24_03_28/data_source/interface/user_api.dart';
import 'package:learn_dart_together/24_03_28/model/photo.dart';
import 'package:learn_dart_together/24_03_28/repository/interface/photo_repository.dart';

import '../../data_source/interface/photo_api.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _photoApi;

  PhotoRepositoryImpl({required PhotoApi photoApi}) : _photoApi = photoApi;

  @override
  Future<List<Photo>> getPhotos() async {
    return await _photoApi.getPhotos();
  }
}
