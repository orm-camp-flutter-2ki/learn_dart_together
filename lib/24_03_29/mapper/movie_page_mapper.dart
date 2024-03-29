import 'package:learn_dart_together/24_03_29/dto/movie_page_dto.dart';
import 'package:learn_dart_together/24_03_29/mapper/date_mapper.dart';
import 'package:learn_dart_together/24_03_29/mapper/movie_mapper.dart';
import 'package:learn_dart_together/24_03_29/model/date.dart';
import 'package:learn_dart_together/24_03_29/model/movie_page.dart';

extension MoviePageDtoToMoviePage on MoviePageDto {
  MoviePage toMoviePage() {
    return MoviePage(
      dates: dates?.toDate() ?? Date(),
      page: page ?? 0,
      results: results?.map((e) => e.toMovie()).toList() ?? [],
      totalPages: totalPages ?? 0,
      totalResults: totalResults ?? 0,
    );
  }
}
