import 'package:learn_dart_together/240329/data_source/movie_api.dart';
import 'package:learn_dart_together/240329/model/movie.dart';
import 'package:learn_dart_together/240329/model/movie_info.dart';

abstract interface class MovieRepository {
  Future<List<MovieInfo>> getMovieInfoList();
  Future<Movie> getMovie(int id);
}

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _api;

  MovieRepositoryImpl({MovieApi? api}) : _api = api ?? MovieApi();

  @override
  Future<List<MovieInfo>> getMovieInfoList() async {
    try {
      final movieInfoList = await _api.getMovieInfoList();

      return movieInfoList;
    } catch (e) {
      print(e);
      return [];
    }
  }

  @override
  Future<Movie> getMovie(int id) async {
    try {
      final movie = await _api.getMovie(id);

      return movie;
    } catch (e) {
      print(e);
      return Movie(
          adult: false,
          backdropPath: '',
          belongsToCollection: BelongsToCollection(id: 0, name: '', posterPath: '', backdropPath: ''),
          budget: 0,
          genres: [],
          homepage: '',
          id: 0,
          imdbId: '',
          originalLanguage: '',
          originalTitle: '',
          overview: '',
          popularity: 0,
          posterPath: '',
          productionCompanies: [],
          productionCountries: [],
          releaseDate: '',
          revenue: 0,
          runtime: 0,
          spokenLanguages: [],
          status: '',
          tagline: '',
          title: '',
          video: false,
          voteAverage: 0,
          voteCount: 0
      );
    }
  }
}