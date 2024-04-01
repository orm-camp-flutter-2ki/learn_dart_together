import '../dto/photo_dto.dart';
import '../model/photo.dart';

extension PhotoDtotoPhoto on Hits {
  Photo toPhoto() {
    return Photo(
      tags: tags ?? '',
      imageUrl: previewURL ?? '',
    );
  }
}
