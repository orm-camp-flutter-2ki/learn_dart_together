import 'package:learn_dart_together/result_ver_2.dart';

import '../model/photo.dart';

abstract interface class PhotoRepository {
  Future<ResultVer2<List<Photo>, NetworkError>> getPhotos(
    String apiKey,
    String query,
  );
}
