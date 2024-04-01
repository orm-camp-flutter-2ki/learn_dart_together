import 'package:learn_dart_together/0401/model/photo.dart';

import '../dto/photo_dto.dart';

extension ToPhoto on PhotoDto {
  Photo toPhotos() {
    return Photo(
      tags: tags ?? 'unknown',
      imageUrl: webformatURL ?? 'unknown',
    );
  }
}

extension ToPhotoDto on Photo {
  PhotoDto toPhotoDto() {
    return PhotoDto(
      tags: tags,
      webformatURL: imageUrl,
    );
  }
}
