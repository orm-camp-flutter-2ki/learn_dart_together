import 'date_dto.dart';
import 'result_dto.dart';

class MovieDto {

  final DateDto? dates;
  final int? page;
  final List<ResultDto>? results;
  final int? totalPages;
  final int? totalResults;

  const MovieDto({
    required this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  Map<String, dynamic> toJson() {
    return {
      'dates': dates,
      'page': page,
      'results': results,
      'totalPages': totalPages,
      'totalResults': totalResults,
    };
  }

  factory MovieDto.fromJson(Map<String, dynamic> map) {
    return MovieDto(
      dates: DateDto.fromJson(map['dates']),
      page: map['page'] as int,
      results: (map['results'] as List).map((e) => ResultDto.fromJson(e)).toList(),
      totalPages: map['total_pages'] as int,
      totalResults: map['total_results'] as int,
    );
  }
}



/*
"dates": {
    "maximum": "2024-04-24",
    "minimum": "2024-04-03"
  },
  "page": 1,
  "results": [
    {
      "adult": false,
      "backdrop_path": "/1XDDXPXGiI8id7MrUxK36ke7gkX.jpg",
      "genre_ids": [28, 12, 16, 35, 10751],
      "id": 1011985,
      "original_language": "en",
      "original_title": "Kung Fu Panda 4",
      "overview": "마침내 내면의 평화… 냉면의 평화…가 찾아왔다고 믿는 용의 전사 ‘포’ 이젠 평화의 계곡의 영적 지도자가 되고, 자신을 대신할 후계자를 찾아야만 한다. “이제 용의 전사는 그만둬야 해요?” 용의 전사로의 모습이 익숙해지고 새로운 성장을 하기보다 지금 이대로가 좋은 ‘포’ 하지만 모든 쿵푸 마스터들의 능력을 그대로 복제하는 강력한 빌런 ‘카멜레온’이 나타나고 그녀를 막기 위해 정체를 알 수 없는 쿵푸 고수 ‘젠’과 함께 모험을 떠나게 되는데… 포는 가장 강력한 빌런과 자기 자신마저 뛰어넘고 진정한 변화를 할 수 있을까?",
      "popularity": 4028.167,
      "poster_path": "/1ZNOOMmILNUzVYbzG1j7GYb5bEV.jpg",
      "release_date": "2024-03-02",
      "title": "쿵푸팬더 4",
      "video": false,
      "vote_average": 6.9,
      "vote_count": 378
    },
    .
    .
    .
  ],

"total_pages": 40,
  "total_results": 790

 */