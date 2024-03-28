import 'package:learn_dart_together/24_03_28/dto/Content_dto.dart';
import 'package:learn_dart_together/24_03_28/model/content.dart';
import 'package:learn_dart_together/24_03_28/model/name_space/media_type.dart';

extension ContentMapper on ContentDto {
  Content transferDtoContent() {
    return Content(
        id: id ?? 0,
        type: parseMediaType(type),
        title: title ?? 'null',
        content: content ?? 'null',
        createdAt: parseDateTime(createdAt)
    );
  }

  MediaType parseMediaType(String? type) {
    switch (type) {
      case 'article':
        return MediaType.article;
      case 'image':
        return MediaType.image;
      case 'video':
        return MediaType.video;
      default :
        return MediaType.unknown;
    }
  }

  DateTime parseDateTime(String? time) {
    DateTime result = DateTime.now();

    if (time != null) {
      result = DateTime.parse(time);
    }

    return result;
  }
}