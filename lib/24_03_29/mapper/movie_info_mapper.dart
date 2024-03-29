import 'package:learn_dart_together/24_03_29/dto/movie_info_dto.dart';
import 'package:learn_dart_together/24_03_29/mapper/date_mapper.dart';
import 'package:learn_dart_together/24_03_29/mapper/movie_mapper.dart';
import 'package:learn_dart_together/24_03_29/model/date.dart';
import 'package:learn_dart_together/24_03_29/model/movie_info.dart';

extension MovieInfoDtoToMovieInfo on MovieInfoDto {
  MovieInfo toMovieInfo() {
    return MovieInfo(
      dates: dates?.toDate() ?? Date(),
      page: page ?? 0,
      results: results?.map((e) => e.toMovie()).toList() ?? [],
      totalPages: totalPages ?? 0,
      totalResults: totalResults ?? 0,
    );
  }
}
