import 'package:learn_dart_together/240329_0/dto/photo_dto.dart';

import '../model/photo.dart';

extension ToPhoto on PhotoDto {
  Photo toPhoto() {
    return Photo(
      url: url ?? '',
      title: title ?? '',
      type: switch (type?.toLowerCase() ?? '') {
        'article' => PhotoType.article,
        'image' => PhotoType.article,
        'video' => PhotoType.article,
        _ => PhotoType.unknown
      },
      createdAt: DateTime.tryParse(createdAt ?? '') ?? DateTime(1981, 12, 19),
    );
  }
}
