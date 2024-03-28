import 'package:learn_dart_together/240326/data_source/p3_photo_api.dart';
import 'package:learn_dart_together/240326/model_class/p3_model_class.dart';

class PhotoRepository {
  final PhotoApi _api = PhotoApi();

  Future<List<Photo>> getPhotos(int albumId) {
    return _api.getPhotoApi(albumId);
  }
}
