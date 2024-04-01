import 'package:learn_dart_together/24_04_01/dto/results_dto.dart';
import 'package:learn_dart_together/24_04_01/model/photo.dart';

extension PhotoDtoToPhoto on PhotoDto {
  Photo toPhoto() {
    return Photo(tags: tags ?? '', largeImageURL: largeImageURL ?? '');
  }
}
