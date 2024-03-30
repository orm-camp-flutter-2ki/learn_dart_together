import 'package:learn_dart_together/24_03_29/repository/movie_repository_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('연습문제1 - 영화정보를 가져와서 모델에 담고 json 형태로 출력하기 ', () async {

    //given
    final repository = MovieRepositoryImpl();
    final result = await repository.getMovieInfoList();

    //when
    final expected = result.first;

    //then
    expect(expected.id.runtimeType, int);
    expect(expected.title.runtimeType, String);
    expect(expected.popularity.runtimeType, double);
    expect(expected.release_date.runtimeType, DateTime);
    expect(expected.vote_average.runtimeType, double);
  });
}