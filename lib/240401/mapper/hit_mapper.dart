import 'package:learn_dart_together/240401/dto/photo_dto.dart';
import 'package:learn_dart_together/240401/model/hits.dart';

extension ToHits on HitsDto {
  Hits toHits() {
    return Hits(
      tags: tags ?? '',
      imageURL: previewURL ?? '',
    );
  }
}

// 포토dto > 포토 만드는 익스텐션
