import 'package:learn_dart_together/0329/dto/movie_detail_dto.dart';
import 'package:learn_dart_together/0329/model/movie_detail.dart';

extension Mapper on MovieDetailDto {
  MovieDetail toMovieDetail() {
    return MovieDetail(
        tagline: tagline ?? '', title: title ?? '', overview: overview ?? '');
  }
}
