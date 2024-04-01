import 'package:learn_dart_together/24_04_01/dto/photo_response_dto.dart';

import '../model/photo.dart';

extension HitToPhoto on Hit {
  Photo toPhoto() {
    return Photo(
      tags: tags?.split(', ') ?? [],
      imageUrl: webformatURL ?? largeImageURL ?? previewURL ?? '',
    );
  }
}
