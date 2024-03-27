import 'dart:convert';
import 'package:learn_dart_together/24_03_26/photo.dart';
import 'package:learn_dart_together/data_source/photo_api.dart';
import 'package:learn_dart_together/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api = PhotoApi();

  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    final response = await _api.getPhotos(albumId);

    List jsonList = jsonDecode(response);

    return jsonList.map((e) => Photo.fromJson(e)).toList();
  }
}
