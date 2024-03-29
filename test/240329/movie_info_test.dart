import 'package:learn_dart_together/24_03_29/movie/model/movie.dart';
import 'package:learn_dart_together/24_03_29/movie/model/movie_info.dart';
import 'package:learn_dart_together/24_03_29/movie/repo/movie_repository_impl.dart';
import 'package:learn_dart_together/http/fake_http_service.dart';
import 'package:learn_dart_together/http/http_core.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  final FakeHttpService _fakeHttpService = FakeHttpService();

  group(
      '네트워크 통신 과제',
      () => {
            test('영화정보를 가져와서 모델에 담고 json을 출력한다.', () async {
              List<MovieInfo> movieInfo =
                  await MovieRepositoryImpl(_fakeHttpService)
                      .getMovieInfoList();

              expect(movieInfo[0].title == '쿵푸팬더 4', true);

              print(movieInfo.map((e) => e.toJson()));
            })
          });

  test('영화 상세정보를 가져와서 모델에 담고 json을 출력한다.', () async {
    // 실 api 데이터
    Movie movie1 =
        await MovieRepositoryImpl(HttpService()).getMovieInfo(id: 957304);

    // mock 데이터
    Movie movie2 =
        await MovieRepositoryImpl(_fakeHttpService).getMovieInfo(id: 957304);

    expect(movie1.title == '드라이브어웨이 돌스', true);
    expect(movie2.title == '드라이브어웨이 돌스', true);
  });
}
