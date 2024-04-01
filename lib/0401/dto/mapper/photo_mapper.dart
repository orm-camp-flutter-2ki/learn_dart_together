import 'package:learn_dart_together/0401/dto/photo_list_info_dto.dart';
import 'package:learn_dart_together/0401/model/photo.dart';

extension Mapper on HitDto {
  Photo toPhoto() {
    return Photo(
      tags: tags ?? '',
      imageUrl: webformatURL ?? '',
    );
  }
}
