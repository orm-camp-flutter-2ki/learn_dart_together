import 'package:learn_dart_together/0329/dto/result_dto.dart';
import 'package:learn_dart_together/0329/model/movie_info.dart';

extension ToMovieInfo on ResultDto {
  MovieInfo toMovieInfo() {
    return MovieInfo(
      title: title ?? 'unknown',
      releaseDate: releaseDate ?? 'YYYY-MM-DD',
      overview: overview ?? 'no_content',
      voteAverage: voteAverage?.toDouble() ?? 0.0,
    );
  }
}

extension ToResultDto on MovieInfo {
  ResultDto toResultDto() {
    return ResultDto(
      title: title,
      releaseDate: releaseDate,
      overview: overview,
      voteAverage: voteAverage,
    );
  }
}
