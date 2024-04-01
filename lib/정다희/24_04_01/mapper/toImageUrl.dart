import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_01/model/imageUrl.dart';

import '../dto/Photo_dto.dart';

extension ToPhotoUrl on PhotoDto {
  ImageUrl toUrl() {
    return ImageUrl(
        pageUrl: pageURL ?? '',
        webformatUrl: webformatURL ?? '',
        largeImageUrl: largeImageURL ?? '');
  }
}
