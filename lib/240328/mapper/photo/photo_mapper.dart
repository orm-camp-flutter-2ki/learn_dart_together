import 'package:learn_dart_together/240328/dto/photo/photo_dto.dart';
import 'package:learn_dart_together/240328/model/photo/photo.dart';

extension PhotoDtoToPhoto on PhotoDto {
  Photo toPhoto() {
    return Photo(
        id: id ?? 0,
        type: _getPhotoType(type),
        title: title ?? '',
        url: url ?? '',
        content: content ?? '',
        caption: caption ?? '',
        createdAt: _getCreatedDate(createdAt)
    );
  }

  PhotoType _getPhotoType(Object? type) {
    switch (type.toString().toLowerCase()) {
      case 'article':
        return PhotoType.Article;
      case 'image':
        return PhotoType.Image;
      case 'video':
        return PhotoType.Video;
      default:
        return PhotoType.unknown;
    }
  }

  DateTime _getCreatedDate(String? date) {
    if (date == null) return DateTime(0);

    return DateTime.parse(date);
  }
}