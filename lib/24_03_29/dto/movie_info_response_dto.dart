import 'package:learn_dart_together/24_03_29/dto/date_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_info_dto.dart';

class MovieInfoResponseDto {
  final DateDto? dates;
  final num? page;
  final List<MovieInfoDto>? results;
  final num? totalPages;
  final num? totalResults;

  MovieInfoResponseDto({
    required this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory MovieInfoResponseDto.fromJson(dynamic json) {
    return MovieInfoResponseDto(
      dates: json['dates'] != null ? DateDto.fromJson(json['dates']) : null,
      page: json['page'],
      results: json['results'] != null
          ? (json['results'] as List).map((e) => MovieInfoDto.fromJson(e)).toList()
          : null,
      totalPages: json['total_pages'],
      totalResults: json['total_results'],
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (dates != null) {
      map['dates'] = dates?.toJson();
    }
    map['page'] = page;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = totalPages;
    map['total_results'] = totalResults;
    return map;
  }
}
