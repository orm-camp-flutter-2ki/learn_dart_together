import 'package:learn_dart_together/240401/dto/photo_search_dto.dart';
import 'package:learn_dart_together/240401/model/photo.dart';

extension ToPhoto on PhotoDto {
  Photo toPhoto() {
    return Photo(
        tags: tags ?? '',
        imageUrl: largeImageURL ?? ''
    );
  }
}