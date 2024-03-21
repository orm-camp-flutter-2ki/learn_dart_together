import 'package:learn_dart_together/24_03_21/api_request.dart';
import 'package:test/test.dart';

void main() {
  // Future<Movie> getMovieInfo() async
  group('getMovieInfo()는', () {
    test('무비 정보를 요청하여 Movie 클래스를 반환한다.', () async {
      // Given
      final expected = Movie(title: 'Star Wars', director: 'George Lucas', year: 1977);

      // When
      final result = await getMovieInfo();

      // Then
      expect(result, expected);
    });
  });
}