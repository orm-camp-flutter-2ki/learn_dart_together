import '../dto/photo_dto.dart';
import '../model/photo.dart';

extension ToPhoto on PhotoDto {
  Photo toPhoto() {
    return Photo(
      // 모델클래스필드명:dto필드명 ?? '',
      tags: tags ?? '',
      imageUrl: largeImageURL ?? '',
    );
  }
}
