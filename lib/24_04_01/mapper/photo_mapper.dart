import '../dto/photo_dto.dart';
import '../model/photo.dart';

class PhotoMapper {
  // DTO to Photo 객체
  static Photo fromDto(PhotoDTO dto) {
    return Photo(tags: dto.tags, imageUrl: dto.webformatURL);
  }
}
