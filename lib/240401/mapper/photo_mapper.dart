import '../dto/photo_dto.dart';
import '../model/photo.dart';

extension PhotoDtoToPhoto on PhotoDto {
  Photo toPhoto() {
    return Photo(
        tags: tags ?? '',
        imageUrl: largeImageURL ?? ''
    );
  }
}