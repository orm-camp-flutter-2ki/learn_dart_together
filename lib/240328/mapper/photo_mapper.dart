import 'package:learn_dart_together/240328/dto/photo_dto.dart';

import '../model/photo.dart';

extension PhtoDtoToPhoto on PhotoDto {
  Photo toPhoto() {
    return Photo(
      id: int.parse(id ?? '0'),
      type: type ?? '${photoType.unknown}',
      title: title ?? '',
      url: url ?? '',
      caption: caption ?? '',
      content: content ?? '',
      createdAt: DateTime.parse(createdAt ?? ''),
    );
  }
}
