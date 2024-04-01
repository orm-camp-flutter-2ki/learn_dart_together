import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_01/dto/Photo_dto.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_01/model/tags.dart';

extension ToTag on PhotoDto {
  Tag toTag() {
    return Tag(name: tags ?? '');
  }
}
