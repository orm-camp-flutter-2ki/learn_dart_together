import 'package:learn_dart_together/24_04_01/model/photo.dart';
import 'package:learn_dart_together/24_04_01/model/results.dart';
import 'package:learn_dart_together/24_04_01/result.dart';

abstract interface class ResultsRepository {
  Future<Results> getResults(String query);

  Future<Result<List<Photo>>> getPhotos(String query);
}
