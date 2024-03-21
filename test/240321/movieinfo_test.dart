import 'dart:convert';
import 'dart:async';
import 'package:test/test.dart';
import 'package:learn_dart_together/240321/moveinfo2.dart';

void main() {
  group('Movie', () {
    test('영화 정보 가져오기', () async {
      // Given
      // Movie expectedMovie = Movie(
      //   title: 'Star Wars',
      //   director: 'George Lucas',
      //   year: 1977,
      // );

      // When
      Movie movie = await getMovieInfo();

      // Then
      // expect(movie, equals(expectedMovie));
      expect(movie.director, equals('George Lucas'));
    });
  });
}