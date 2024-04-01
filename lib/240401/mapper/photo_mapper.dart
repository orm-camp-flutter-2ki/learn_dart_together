
import '../dto/photo_dto.dart';
import '../model/photo.dart';

extension photoMapper on Hits {
  Photo toPhoto() {
    return Photo(
      tags: tags ?? '',
      imageUrl: pageURL ?? '',
    );
  }
}
