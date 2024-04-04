import 'package:learn_dart_together/24_04_01/dto/photo_dto.dart';

import '../model/photo.dart';

// extension ToPhotos on PhotoDto {
//   List<Photo> toPhotos() {
//     if (hits == null) return [];
//     return hits!.map((e) => e.toPhoto()).toList();
//   }
// }

extension ToPhoto on Hit {
  Photo toPhoto() {
    return Photo(
      tags: tags!.split(',').toList(),
      imageUrl: largeImageURL ?? '',
    );
  }
}
