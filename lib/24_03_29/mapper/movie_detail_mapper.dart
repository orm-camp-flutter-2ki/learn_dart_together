import 'package:learn_dart_together/24_03_29/dto/movie_detail_dto.dart';
import 'package:learn_dart_together/24_03_29/model/movie_detail.dart';

extension MovieDetailDtoToMovieDetail on MovieDetailDto {
  MovieDetail toMovieDetail() {
    return MovieDetail(
      id: id?.toInt() ?? -1,
      overview: overview ?? '',
      releaseDate: releaseDate ?? '',
      title: title ?? '',
      voteAverage: voteAverage?.toDouble() ?? -1.0,
    );
  }
}
