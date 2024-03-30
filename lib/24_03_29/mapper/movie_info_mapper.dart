import 'package:learn_dart_together/24_03_29/dto/upcoming_movies_dto.dart';
import 'package:learn_dart_together/24_03_29/model/movie_info.dart';

extension MovieInfoDtoToMovieInfo on MovieInfoDto {
  MovieInfo toMovieInfo() {
    return MovieInfo(
      id: id?.toInt() ?? -1,
      overview: overview ?? '',
      releaseDate: releaseDate ?? '',
      title: title ?? '',
      voteAverage: voteAverage?.toDouble() ?? -1.0,
    );
  }
}
