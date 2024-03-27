import 'package:test/test.dart';

import '../../240321/getmovie.dart';

void main() {
  group('movie', () {
    test('제작자 출력', () async {
      //given
      String sol = 'George Lucas';
      //when

      Movie movie = await getMovieInFo();
      String data = movie.director;

      //then
      expect(data, sol);
    });
    test('타이틀 출력', () async {
      //given
      String sol = 'Star Ward';
      //when

      Movie movie = await getMovieInFo();
      String data = movie.title;

      //then
      expect(data, sol);
    });
    test('출시년도 출력', () async {
      //given
      int sol = 1977;
      //when

      Movie movie = await getMovieInFo();
      int data = movie.year;

      //then
      expect(data, sol);
    });
  });
}
