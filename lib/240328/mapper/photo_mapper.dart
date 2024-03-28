/*import '../dto/todo_dto.dart';
import '../model/todo.dart';*/

import 'package:learn_dart_together/240328/model/photo.dart';

import '../dto/photo_dto.dart';
import '../enum/enum_photo.dart';
import '../model/store.dart';
import '../dto/store_dto.dart';

extension PhotoDtoToPhoto on PhotoDto {
  Photo toPhoto() {
    return Photo(
        id: id ?? 0,
        type: type ?? PhotoEnum.unknown,
        url: url ?? '',
        caption: caption ?? '',
        createdAt: createdAt ?? DateTime(0, 0, 0, 0, 0, 0));
  }
}
