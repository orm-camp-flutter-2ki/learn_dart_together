import 'package:learn_dart_together/24_03_29/model/date_dto.dart';
import 'package:learn_dart_together/24_03_29/model/movie_dto.dart';

class MovieDtoPage {
  DateDto? dates;
  num? page;
  List<MovieDto>? results;
  num? totalPages;
  num? totalResults;

  MovieDtoPage({
    this.dates,
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  MovieDtoPage.fromJson(dynamic json) {
    dates = json['dates'] != null ? DateDto.fromJson(json['dates']) : null;
    page = json['page'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(MovieDto.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
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
