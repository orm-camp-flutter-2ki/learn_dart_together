import 'package:learn_dart_together/24_03_29/dto/movie_info_response_dto.dart';
import 'package:learn_dart_together/24_03_29/mapper/date_mapper.dart';
import 'package:learn_dart_together/24_03_29/mapper/movie_info_mapper.dart';
import 'package:learn_dart_together/24_03_29/model/date.dart';
import 'package:learn_dart_together/24_03_29/model/movie_info_response.dart';

extension MovieInfoResponseDtoToMovieInfoResponse on MovieInfoResponseDto {
  MovieInfoResponse toMovieInfo() {
    return MovieInfoResponse(
      dates: dates?.toDate() ?? Date(),
      page: page ?? 0,
      results: results?.map((e) => e.toMovieInfo()).toList() ?? [],
      totalPages: totalPages ?? 0,
      totalResults: totalResults ?? 0,
    );
  }
}
