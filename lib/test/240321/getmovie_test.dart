import 'package:test/test.dart';

import '../../240321/getmovie.dart';

void main() {
  test('movie', () async {
    //given
    String sol2 = 'George Lucas';
    //when

    Movie movie = await getMovieInFo();
    String data = movie.director;

    //then
    expect(data, sol2);
  });
}
