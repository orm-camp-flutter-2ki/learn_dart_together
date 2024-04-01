import 'package:learn_dart_together/240401/data_source/photo_api.dart';
import 'package:learn_dart_together/240401/model/photo.dart';
import 'package:learn_dart_together/240401/repository/photo_repository.dart';
import 'package:learn_dart_together/result_ver_2.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api;

  PhotoRepositoryImpl({required PhotoApi photoApi}) : _api = photoApi;

  @override
  Future<ResultVer2<List<Photo>, NetworkError>> getPhotos(
      String apiKey, String query) async {
    final photos = _api.getPhotos(apiKey, query);

    return photos;
  }
}
