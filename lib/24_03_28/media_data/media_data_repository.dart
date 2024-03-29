import 'media_data.dart';

abstract interface class MediaDataRepository {
  Future<List<MediaData>> getMedias();
}
