import 'package:learn_dart_together/240328/dto/photo/photo_dto.dart';
import 'package:learn_dart_together/240328/model/photo/photo.dart';

extension PhotoDtoToPhoto on PhotoDto {
  Photo toPhoto() {
    return Photo(
        id: id ?? 0,
        type: type ?? PhotoType.unknown,
        title: title ?? '',
        url: url ?? '',
        content: content ?? '',
        caption: caption ?? '',
        createdAt: createdAt ?? DateTime.now()
    );
  }
}