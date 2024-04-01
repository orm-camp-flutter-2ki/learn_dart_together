import 'package:learn_dart_together/24_04_01/dto/picture_dto.dart';
import 'package:learn_dart_together/24_04_01/model/picture.dart';

extension HitsDtoMapper on HitsDto {
  Picture toPicture() {
    return Picture(tags: tags ?? '', imageUrl: previewURL ?? '');
  }
}