import 'package:collection/collection.dart';
import 'package:learn_dart_together/240329/model/movie/movie.dart';
import 'package:learn_dart_together/240329/repository/movie_repository_impl.dart';
import 'package:test/test.dart';

Function eq = DeepCollectionEquality().equals;
void main() {
  test('movie ', () async {
    final repository = MovieRepositoryImpl();

    final movies = await repository.getMovieDetail();

    expect(eq(Movie.fromJson(detail), movies), true);
  });
}

final detail = {
  "adult": false,
  "backdrop_path": "/3IoSYT0gnuImnZ73rqYySJnmefA.jpg",
  "belongs_to_collection": {"id": 2980, "name": "고스트버스터즈 시리즈", "poster_path": "/sctvCtE1M1rDF4f0W2fMrk2BrGB.jpg", "backdrop_path": "/6Jnlhr2ac8OuDJEowsFLzZY3SXd.jpg"},
  "budget": 100000000,
  "genres": [
    {"id": 14, "name": "판타지"},
    {"id": 12, "name": "모험"},
    {"id": 35, "name": "코미디"}
  ],
  "homepage": "",
  "id": 967847,
  "imdb_id": "tt21235248",
  "original_language": "en",
  "original_title": "Ghostbusters: Frozen Empire",
  "overview": "무더운 여름의 뉴욕의 어느 날, 고대 유물 속 깨어난 ‘데스칠’로 인해 정체불명의 냉기가 몰려오고 마침내 도시는 얼어붙고 만다. 유령을 퇴치하는 ‘그루버슨’(폴 러드)과 라이즈 버스터즈 멤버들은 얼어붙은 세상을 깨부수기 위해 유령 군단을 쫓기 시작하는데…",
  "popularity": 498.697,
  "poster_path": "/mGzSIfzmcf9H91DS06cnka1SYrP.jpg",
  "production_companies": [
    {"id": 84042, "logo_path": "/hbln3zGw1R6mkfRETOaUbRuAJSI.png", "name": "Ghost Corps", "origin_country": "US"},
    {"id": 5, "logo_path": "/71BqEFAF4V3qjjMPCpLuyJFB9A.png", "name": "Columbia Pictures", "origin_country": "US"}
  ],
  "production_countries": [
    {"iso_3166_1": "US", "name": "United States of America"}
  ],
  "release_date": "2024-03-20",
  "revenue": 60000000,
  "runtime": 115,
  "spoken_languages": [
    {"english_name": "English", "iso_639_1": "en", "name": "English"}
  ],
  "status": "Released",
  "tagline": "얼어붙은 세상을 깨라!",
  "title": "고스트버스터즈: 오싹한 뉴욕",
  "video": false,
  "vote_average": 6.804,
  "vote_count": 112
};
