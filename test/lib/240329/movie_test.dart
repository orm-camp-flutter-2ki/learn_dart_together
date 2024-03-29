import 'package:learn_dart_together/240329/model/movie_info.dart';
import 'package:learn_dart_together/240329/repository/movie_repo_impl.dart';
import 'package:learn_dart_together/240329/repository/movie_repository.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Movie 데이터 활용한, ', () {
    final MovieRepository repository = MovieRepositoryImpl();

    group('(필수) 연습문제 1', () {

      test('영화 정보 출력하기', () async {
        // Given
        final expected = MovieInfo.fromJson(movieMockData);

        // When
        final movies = await repository.getMovieInfoList();

        // Then
        expect(movies.first.adult, expected.adult);
        expect(movies.first.backdropPath, expected.backdropPath);
        expect(movies.first.id, expected.id);
        expect(movies.first.originalLanguage, expected.originalLanguage);
        expect(movies.first.originalTitle, expected.originalTitle);
        expect(movies.first.overview, expected.overview);
        expect(movies.first.popularity, expected.popularity);
        expect(movies.first.posterPath, expected.posterPath);
        expect(movies.first.releaseDate, expected.releaseDate);

      });
    });

    group('(필수) 연습문제 2', () {
      test('영화의 상세정보를 모델에 담고 json 형태로 출력하기', () async {
        // Given
        final movieId = 1011985;

        // When
        final movie = await repository.getMovie(movieId);

        // Then
        // print(movie.overview);
        // 연습 문제 1이랑 다르게 테스트 하기?
      });
    });
  });
}

final movieMockData = {
  "adult": false,
  "backdrop_path": "/1XDDXPXGiI8id7MrUxK36ke7gkX.jpg",
  "genre_ids": [28, 12, 16, 35, 10751],
  "id": 1011985,
  "original_language": "en",
  "original_title": "Kung Fu Panda 4",
  "overview":
      "마침내 내면의 평화… 냉면의 평화…가 찾아왔다고 믿는 용의 전사 ‘포’ 이젠 평화의 계곡의 영적 지도자가 되고, 자신을 대신할 후계자를 찾아야만 한다. “이제 용의 전사는 그만둬야 해요?” 용의 전사로의 모습이 익숙해지고 새로운 성장을 하기보다 지금 이대로가 좋은 ‘포’ 하지만 모든 쿵푸 마스터들의 능력을 그대로 복제하는 강력한 빌런 ‘카멜레온’이 나타나고 그녀를 막기 위해 정체를 알 수 없는 쿵푸 고수 ‘젠’과 함께 모험을 떠나게 되는데… 포는 가장 강력한 빌런과 자기 자신마저 뛰어넘고 진정한 변화를 할 수 있을까?",
  "popularity": 4028.167,
  "poster_path": "/1ZNOOMmILNUzVYbzG1j7GYb5bEV.jpg",
  "release_date": "2024-03-02",
  "title": "쿵푸팬더 4",
  "video": false,
  "vote_average": 6.9,
  "vote_count": 378
};
