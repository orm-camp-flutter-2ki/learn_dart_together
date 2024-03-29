import 'package:intl/intl.dart';
import 'package:learn_dart_together/24_03_28/media_data/media_data.dart';
import 'package:learn_dart_together/24_03_28/media_data/media_data_dto.dart';

extension ToMediaData on MediaDataDto {
  MediaData toMediaData() {
    return MediaData(
      id: int.tryParse(id ?? '-1') ?? -1,
      type: MediaDataType.getType(type ?? ''),
      title: title ?? '',
      content: content ?? '',
      createdAt: DateTime.tryParse(createdAt ?? '') ?? DateTime.now(),
    );
  }
}
