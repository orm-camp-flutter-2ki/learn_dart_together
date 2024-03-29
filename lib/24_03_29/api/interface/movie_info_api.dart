import 'package:learn_dart_together/24_03_29/dto/movie_detail_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_info_dto.dart';

abstract interface class MovieInfoApi {
  Future<List<MovieInfoDto>> getMovieInfoList();

  Future<MovieDetailDto> getMovieDetail(int movieId);
}
