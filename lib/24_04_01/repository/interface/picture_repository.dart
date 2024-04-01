import 'package:learn_dart_together/24_03_25/utility/network_error.dart';
import 'package:learn_dart_together/24_04_01/model/picture.dart';
import 'package:learn_dart_together/24_04_01/result/result.dart';

abstract interface class PictureRepository {
  Future<Result<List<Picture>,NetworkingError>> getPictures(String query);
}