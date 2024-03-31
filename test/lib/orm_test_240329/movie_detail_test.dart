import 'package:learn_dart_together/orm_240329/03_data_source/movie_detail_api.dart';
import 'package:learn_dart_together/orm_240329/03_model/movieSearch/movie_detail.dart';
import 'package:learn_dart_together/orm_240329/03_repository/movie_detail_repository.dart';
import 'package:learn_dart_together/orm_240329/03_repository/movie_detail_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  final MovieDetailRepository repo =
      MovieDetailRepositoryImpl(MovieDetailApi());

  group('영화 아이디 넣어 검색 테스트', () {
    test('마담웹 검사', () async {
      final movie1test = await repo.getMovieDetail(634492);
      final expected = MovieDetail.fromJson(web);
      expect(movie1test == expected, true);
    });
    test('듄 테스트', () async {
      final movie2test = await repo.getMovieDetail(693134);
      final expected = MovieDetail.fromJson(dune);
      expect(movie2test.title, expected.title);
    });
  });
}

final web = {
  "adult": false,
  "backdrop_path": "/zAepSrO99owYwQqi0QG2AS0dHXw.jpg",
  "belongs_to_collection": null,
  "budget": 80000000,
  "genres": [
    {"id": 28, "name": "액션"},
    {"id": 14, "name": "판타지"}
  ],
  "homepage": "",
  "id": 634492,
  "imdb_id": "tt11057302",
  "original_language": "en",
  "original_title": "Madame Web",
  "overview":
      "우연한 사고로 미래를 볼 수 있게 된 구급대원 '캐시 웹'이 거미줄처럼 엮인 운명을 마주하며, 같은 예지 능력을 가진 적 '심스'에 맞서 세상을 구할 히어로 '마담 웹'으로 거듭나게 되는 과정을 그린 마블의 NEW 히어로 드라마",
  "popularity": 2434.816,
  "poster_path": "/eqEzpQNusV9XSdnA9HAvlLMeuPs.jpg",
  "production_companies": [
    {
      "id": 5,
      "logo_path": "/71BqEFAF4V3qjjMPCpLuyJFB9A.png",
      "name": "Columbia Pictures",
      "origin_country": "US"
    },
    {
      "id": 435,
      "logo_path": "/AjzK0s2w1GtLfR4hqCjVSYi0Sr8.png",
      "name": "di Bonaventura Pictures",
      "origin_country": "US"
    }
  ],
  "production_countries": [
    {"iso_3166_1": "US", "name": "United States of America"}
  ],
  "release_date": "2024-02-14",
  "revenue": 99266032,
  "runtime": 116,
  "spoken_languages": [
    {"english_name": "English", "iso_639_1": "en", "name": "English"}
  ],
  "status": "Released",
  "tagline": "거미줄처럼 얽힌 운명",
  "title": "마담 웹",
  "video": false,
  "vote_average": 5.6,
  "vote_count": 864
};
final dune = {
  "adult": false,
  "backdrop_path": "/xOMo8BRK7PfcJv9JCnx7s5hj0PX.jpg",
  "belongs_to_collection": {
    "id": 726871,
    "name": "듄 시리즈",
    "poster_path": "/wcVafar6Efk3YgFvh8oZQ4yHL6H.jpg",
    "backdrop_path": "/ygVSGv86R0BTOKJIb8RQ1sFxs4q.jpg"
  },
  "budget": 190000000,
  "genres": [
    {"id": 878, "name": "SF"},
    {"id": 12, "name": "모험"}
  ],
  "homepage": "",
  "id": 693134,
  "imdb_id": "tt15239678",
  "original_language": "en",
  "original_title": "Dune: Part Two",
  "overview":
      "황제의 모략으로 멸문한 가문의 유일한 후계자 폴. 어머니 레이디 제시카와 간신히 목숨만 부지한 채 사막으로 도망친다. 그곳에서 만난 반란군들과 숨어 지내다 그들과 함께 황제의 모든 것을 파괴할 전투를 준비한다. 한편 반란군들의 기세가 높아질수록 불안해진 황제와 귀족 가문은 잔혹한 암살자 페이드 로타를 보내 반란군을 몰살하려 하는데…",
  "popularity": 791.212,
  "poster_path": "/8uUU2pxm6IYZw8UgnKJyx7Dqwu9.jpg",
  "production_companies": [
    {
      "id": 923,
      "logo_path": "/8M99Dkt23MjQMTTWukq4m5XsEuo.png",
      "name": "Legendary Pictures",
      "origin_country": "US"
    }
  ],
  "production_countries": [
    {"iso_3166_1": "US", "name": "United States of America"}
  ],
  "release_date": "2024-02-27",
  "revenue": 581394061,
  "runtime": 167,
  "spoken_languages": [
    {"english_name": "English", "iso_639_1": "en", "name": "English"}
  ],
  "status": "Released",
  "tagline": "운명의 반격이 시작된다!",
  "title": "듄: 파트 2",
  "video": false,
  "vote_average": 8.381,
  "vote_count": 2264
};
