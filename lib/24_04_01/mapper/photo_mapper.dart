import 'package:learn_dart_together/24_04_01/dto/photo_dto.dart';

import '../model/photo.dart';

extension PhotoMapper on HitDto {
  Photo toPhoto() => Photo(tags: tags ?? '', imageUrl: imageURL ?? largeImageURL ?? '');
}