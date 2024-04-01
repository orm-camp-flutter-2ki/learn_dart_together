import 'package:learn_dart_together/240401/dto/photo_dto.dart';
import 'package:learn_dart_together/240401/model/photo/photo.dart';

extension ToPhoto on PhotoDto {
  Photo toPhoto() {
    return Photo(
      total: total ?? 0,
      totalHits: totalHits ?? 0,
      hits: hits ?? [],
    );
  }
}

extension ToPhotoDto on Photo {
  PhotoDto toPhotoDto() {
    return PhotoDto(
      total: total,
      totalHits: totalHits,
      hits: hits,
    );
  }
}
