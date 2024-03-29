import 'package:learn_dart_together/24_03_29/movie/movie_info.dart';
import 'package:learn_dart_together/24_03_29/movie/movie_repository_impl.dart';
import 'package:learn_dart_together/http/fake_http_service.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  final FakeHttpService _fakeHttpService = FakeHttpService();

  group('네트워크 통신 과제', () => {
  test('영화정보를 가져와서 모델에 담고 json을 출력한다.', () async {

    List<MovieInfo> movieInfo = await MovieRepositoryImpl(_fakeHttpService).getMovieInfoList();

    expect(movieInfo[0].title == '쿵푸팬더 4',true);

    print(movieInfo.map((e) => e.toJson()));

  })
  });
}