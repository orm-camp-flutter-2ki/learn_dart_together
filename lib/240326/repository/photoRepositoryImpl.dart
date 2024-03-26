import 'package:learn_dart_together/240326/data_source/comments_api.dart';
import 'package:learn_dart_together/240326/datamodel/comment.dart';
import 'package:learn_dart_together/240326/datamodel/photo.dart';
import 'package:learn_dart_together/240326/repository/photoRepository.dart';

import '../data_source/photo_api.dart';
import 'commentsRepository.dart';

class PhotoRepositoryImpl implements PhotoRepository {

  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    PhotoApi photoApi = PhotoApi();
    final List<Photo> photos = await photoApi.getPhotos();
    List<Photo> albumIdphotos =
    photos.where((e) => albumId.toString() == e.albumId).toList();
    return albumIdphotos;
  }
}
