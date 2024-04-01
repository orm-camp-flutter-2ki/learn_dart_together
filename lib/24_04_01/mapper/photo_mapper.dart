import '../dto/photo_dto.dart';
import '../model/photo.dart';

extension ToPhoto on PhotoDto {
  Photo toPhoto() {
    return Photo(tags: tags ?? '', imageUrl: largeImageURL ?? '');
  }
}
