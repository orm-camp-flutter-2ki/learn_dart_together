import 'package:learn_dart_together/24_03_29/data_source/movie_detail_api.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_detail_dto.dart';
import 'package:learn_dart_together/24_03_29/mapper/movie_detail_mapper.dart';
import 'package:learn_dart_together/24_03_29/repository/movie_detail_repo_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('movie detail이 expected와 일치하는지', () async {
    final movieDetail = await MovieDetailRepositoryImpl(MovieDetailApi())
        .getMovieDetail(1011985);

    final expectedMap = MovieDetailDto.fromJson(expectedData);
    final movieDetailExpected = expectedMap.toMovieDetail();

    expect(movieDetail.id == movieDetailExpected.id, true);
    expect(movieDetail.overview == movieDetailExpected.overview, true);
    expect(movieDetail.releaseDate == movieDetailExpected.releaseDate, true);
    expect(movieDetail.title == movieDetailExpected.title, true);
    expect(movieDetail.voteAverage == movieDetailExpected.voteAverage, true);
  });
}

final expectedData = {
  "adult": false,
  "backdrop_path": "/1XDDXPXGiI8id7MrUxK36ke7gkX.jpg",
  "belongs_to_collection": {
    "id": 77816,
    "name": "쿵푸팬더 시리즈",
    "poster_path": "/2QT6PuYXY0T2Ry9rX0JKQYTrbwx.jpg",
    "backdrop_path": "/uDosHOFFWtF5YteBRygHALFqLw2.jpg"
  },
  "budget": 85000000,
  "genres": [
    {"id": 28, "name": "액션"},
    {"id": 12, "name": "모험"},
    {"id": 16, "name": "애니메이션"},
    {"id": 35, "name": "코미디"},
    {"id": 10751, "name": "가족"}
  ],
  "homepage": "",
  "id": 1011985,
  "imdb_id": "tt21692408",
  "original_language": "en",
  "original_title": "Kung Fu Panda 4",
  "overview":
      "마침내 내면의 평화… 냉면의 평화…가 찾아왔다고 믿는 용의 전사 ‘포’ 이젠 평화의 계곡의 영적 지도자가 되고, 자신을 대신할 후계자를 찾아야만 한다. “이제 용의 전사는 그만둬야 해요?” 용의 전사로의 모습이 익숙해지고 새로운 성장을 하기보다 지금 이대로가 좋은 ‘포’ 하지만 모든 쿵푸 마스터들의 능력을 그대로 복제하는 강력한 빌런 ‘카멜레온’이 나타나고 그녀를 막기 위해 정체를 알 수 없는 쿵푸 고수 ‘젠’과 함께 모험을 떠나게 되는데… 포는 가장 강력한 빌런과 자기 자신마저 뛰어넘고 진정한 변화를 할 수 있을까?",
  "popularity": 4028.167,
  "poster_path": "/1ZNOOMmILNUzVYbzG1j7GYb5bEV.jpg",
  "production_companies": [
    {
      "id": 521,
      "logo_path": "/kP7t6RwGz2AvvTkvnI1uteEwHet.png",
      "name": "DreamWorks Animation",
      "origin_country": "US"
    }
  ],
  "production_countries": [
    {"iso_3166_1": "US", "name": "United States of America"}
  ],
  "release_date": "2024-03-02",
  "revenue": 266000000,
  "runtime": 94,
  "spoken_languages": [
    {"english_name": "English", "iso_639_1": "en", "name": "English"}
  ],
  "status": "Released",
  "tagline": "오랜만이지! 드림웍스 레전드 시리즈 마침내 컴백!",
  "title": "쿵푸팬더 4",
  "video": false,
  "vote_average": 6.928,
  "vote_count": 394
};
