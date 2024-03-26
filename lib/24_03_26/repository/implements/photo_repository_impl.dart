import 'package:learn_dart_together/24_03_26/data_source/photo_api.dart';
import 'package:learn_dart_together/24_03_26/model/photo.dart';
import 'package:learn_dart_together/24_03_26/repository/interface/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api = PhotoApi();

  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    final list = await _api.getPhotos();
    final filtered = list.where((e) => e.albumId == albumId).toList();

    return filtered;
  }
}
