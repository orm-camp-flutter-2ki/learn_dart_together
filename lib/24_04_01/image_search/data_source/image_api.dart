import '../dto/image_dto.dart';

abstract interface class ImageApi {
  Future<ImageDto> getImages(String q, String imageType);
}
