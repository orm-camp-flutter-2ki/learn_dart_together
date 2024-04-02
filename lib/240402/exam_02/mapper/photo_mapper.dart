import 'package:learn_dart_together/240402/exam_02/dto/photo_result_dto.dart';

import '../model/photo.dart';

extension ToPhoto on Hits {
  Photo toPhoto() {
    return Photo(
      tags: tags ?? '',
      imageUrl: previewURL ?? '',
    );
  }
}
