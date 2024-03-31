import 'movie.dart';
import 'movie_api.dart';


void main() async {
  final movieApi = MovieApi();

  // 1번
  final List<Movie> movies = await movieApi.getMovieInfoList();
  for (var movie in movies) {
    print(movie.toJson());
  }

  // 2번
  final movieDetail = await movieApi.getMovie(569094);
  print(movieDetail.originalTitle);
  print(movieDetail.adult);
  print(movieDetail.runtime);
  print(movieDetail.status);
}
