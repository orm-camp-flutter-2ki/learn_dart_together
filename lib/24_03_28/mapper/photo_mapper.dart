import 'package:learn_dart_together/24_03_28/dto/photo_dto.dart';
import 'package:learn_dart_together/24_03_28/model/photo.dart';

extension PhotoDtoToPhoto on PhotoDto {
  Photo toPhoto() {
    return Photo(
      id: stringIdToNum(id),
      type: type ?? 'unknown',
      title: title ?? 'unknown',
      content: content ?? 'unknown',
      url: url ?? 'unknown',
      caption: caption ?? 'unknown',
      createdAt: stringDateToDateTime(createdAt),
    );
  }

  DateTime stringDateToDateTime(String? date) {
    return DateTime.parse(date ?? DateTime.now().toString());
  }

  num stringIdToNum(String? id) {
    return int.parse(id ?? '-1');
  }
}
