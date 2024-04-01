import 'package:learn_dart_together/240401/exam_02/dto/movie_detail_dto.dart';
import 'package:learn_dart_together/240401/exam_02/model/movie_detail.dart';

extension ToMovieDetail on MovieDetailDto {
  MovieDetail toMovieDetail() {
    return MovieDetail(
      title: title ?? '',
      runTime: runtime?.toInt() ?? 0,
      posterUrl: posterPath ?? '',
    );
  }
}
