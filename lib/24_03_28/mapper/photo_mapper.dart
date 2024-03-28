import 'package:learn_dart_together/24_03_28/dto/photo_dto.dart';
import 'package:learn_dart_together/24_03_28/model/photo.dart';
import 'package:learn_dart_together/common/extension.dart';

extension PhotoDtoMapper on PhotoDto {
  /// isValid == true인 PhotoDto에서만 호출할 것
  Photo toPhoto() => (!isValid)
      ? throw Exception('유효하지 않은 PhotoDto. isValid에 대해 true인 PhotoDto에서 호출하세요.')
      : Photo(
          id: int.parse(id!),
          type: PhotoType.toPhotoType(type ?? ''),
          title: title!,
          content: content!,
          createdAt: DateTime.parse(createdAt!));

  bool get isValid =>
      id.isNotNull &&
      int.tryParse(id!) != null &&
      title.isNotNull &&
      content.isNotNull &&
      createdAt.isNotNull &&
      DateTime.tryParse(createdAt!) != null;
}

void main() {
  print(DateTime.tryParse('2020-11-01'));
}
