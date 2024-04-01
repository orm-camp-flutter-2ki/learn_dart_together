import 'package:learn_dart_together/24_04_01/dto/photo_dto.dart';
import 'package:learn_dart_together/24_04_01/model/photo.dart';

extension ToPhoto on Hits {
  Photo toPhoto() {
    return Photo(
      tags: tags ?? '',
      imageUrl: webformatURL ?? '',
    );
  }
}
