import 'package:learn_dart_together/0328/model/enum_type.dart';
import 'package:learn_dart_together/0328/model/photo.dart';

import '../photo_dto.dart';

extension Mapper on PhotoDto {
  Photo toPhoto() {
    EnumType photoType = EnumType.unknown;
    switch (type) {
      case 'article':
        photoType = EnumType.article;
      case 'image':
        photoType = EnumType.image;
      case 'video':
        photoType = EnumType.video;
    }

    return Photo(id: id ?? -1,
        type: photoType,
        title: title ?? '',
        url: url ?? '',
        content: content ?? '',
        createdAt: DateTime.parse(createdAt ?? ''));
  }
}