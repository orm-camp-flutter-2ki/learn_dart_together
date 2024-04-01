import '../../result.dart';
import '../model/image_model.dart';

abstract interface class ImageRepository {
  Future<Result<List<ImageModel>>> getPhotos(String q, String imageType);
}
