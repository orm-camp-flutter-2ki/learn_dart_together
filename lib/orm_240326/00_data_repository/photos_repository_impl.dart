import 'package:learn_dart_together/orm_240326/00_data_repository/photos_repository.dart';
import 'package:learn_dart_together/orm_240326/00_data_source/photos_api.dart';

import '../model/photos.dart';

class PhotosRepositoryImpl implements PhotosRepository {
  final PhotosApi _api = PhotosApi();

  @override
  Future<List<Photos>> getPhotos(int albumId) async {
    final result = await _api.getPhotos(albumId);
    return result;
  }
}
