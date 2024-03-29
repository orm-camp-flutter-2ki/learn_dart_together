import 'package:learn_dart_together/24_03_29/dto/movie_info_detail_dto.dart';
import 'package:learn_dart_together/24_03_29/model/movie_info_detail.dart';

extension MovieInfoDetailMapper on MovieInfoDetailDto {
  MovieInfoDetail toMovieInfoDetail() {
    return MovieInfoDetail(
        originalLanguage: originalLanguage ?? '',
        originalTitle: originalTitle ?? '',
        overview: overview ?? '',
        popularity: popularity ?? 0);
  }
}
