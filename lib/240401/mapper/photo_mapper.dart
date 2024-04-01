import 'package:learn_dart_together/240401/dto/photo_dto.dart';

import '../model/photo.dart';

extension ToPhoto on HitsDto {
  Photo toPhoto() {
    return Photo(tags: tags ?? '', imageUrl: userImageURL ?? '');
  }
}
