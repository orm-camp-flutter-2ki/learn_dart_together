import 'package:dart_cli_practice/240326/data_source/photo_api.dart';
import 'package:dart_cli_practice/240326/model/photo.dart';
import 'package:dart_cli_practice/240326/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final api = PhotoApi();

  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    final photos = await api.getPhotos();

    return photos.where((e) => e.albumId == albumId).toList();
  }
}
