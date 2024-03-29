import 'package:collection/collection.dart';
import 'package:learn_dart_together/240329/data_source/movie_api.dart';
import 'package:learn_dart_together/240329/model/movie.dart';
import 'package:learn_dart_together/240329/model/movie_info.dart';
import 'package:learn_dart_together/240329/repository/movie_repository.dart';
import 'package:test/test.dart';

import 'resource/movie.dart';
import 'resource/movie_info.dart';

void main() {
  group('Movie Test', () {
    final repository = MovieRepositoryImpl();
    final mockRepository = MovieRepositoryImpl(api: MockMovieApi());

    test('getMovieInfoList()', () async {
      final movieInfoList = await repository.getMovieInfoList();
      final mockMovieInfoList = await mockRepository.getMovieInfoList();

      expect(movieInfoList.equals(mockMovieInfoList), true);
    });

    test('getMovie()', () async {
      final movieInfoList = await repository.getMovieInfoList();

      final movie = await repository.getMovie(movieInfoList[0].id);
      final mockMovie = await mockRepository.getMovie(movieInfoList[0].id);

      expect(movie == mockMovie, true);
    });
  });
}

class MockMovieApi implements MovieApi {
  @override
  Future<List<MovieInfo>> getMovieInfoList() async {
    final json = mockMovieInfoJson;
    final jsonList = json['results'] as List;

    return jsonList.map((e) => MovieInfo.fromJson(e)).toList();
  }

  @override
  Future<Movie> getMovie(int id) async {
    final json = mockMovieJson;

    return Movie.fromJson(json);
  }

}