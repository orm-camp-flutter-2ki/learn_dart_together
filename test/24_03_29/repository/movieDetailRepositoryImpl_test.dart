import 'package:http/testing.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_29/data_source/movie_api.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_29/repository/movieDetailRepositoryImpl.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'mockResult.dart';
import 'package:http/testing.dart';

void main() {
  group('연습문제2번', () {
    test('영화의 상세정보 테스트', () async {
      // given when then
      final MockClient mockDetailClient = MockClient((request) async {
        if (request.url.toString() ==
            'https://api.themoviedb.org/3/movie/1011985?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1') {
          return http.Response(mockDetailData, 200,
              headers: {'content-type': 'application/json; charset=utf-8'});
        }
        return http.Response('''{"message":"잘못된 요청"}''', 400);
      });
      MovieDetailRepositoryImpl testRepo =
          MovieDetailRepositoryImpl(MovieApi(client: mockDetailClient));
      MovieDetailRepositoryImpl apiRepo = MovieDetailRepositoryImpl(MovieApi());

      final testList = await testRepo.getMovieDetail(1011985);
      final apiList = await apiRepo.getMovieDetail(1011985);

      expect(testList == apiList, true);
    });
  });
}
