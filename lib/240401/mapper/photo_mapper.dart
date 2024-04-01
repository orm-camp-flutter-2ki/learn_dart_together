import 'package:dart_cli_practice/240401/dto/photo_dto.dart';
import 'package:dart_cli_practice/240401/model/photo.dart';

extension PhotoDtoToPhoto on PhotoDto {
  Photo toPhoto() {
    return Photo(
      tags: tags ?? '',
      imageUrl: largeImageURL ?? '',
    );
  }
}
