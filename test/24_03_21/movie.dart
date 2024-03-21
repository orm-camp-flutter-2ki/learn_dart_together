import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_21/api_request.dart';
import 'package:test/test.dart';

void main() {
  group('Movie 클래스의', () {
    test('fromJson()는 Json(Map)을 통해 Movie 인스턴스를 생성한다.', () async {
      // Given
      final expected = Movie(title: 'Star Wars', director: 'George Lucas', year: 1977);
      Map<String, dynamic> json = { 'title': 'Star Wars', 'director': 'George Lucas', 'year': 1977 };

      // When
      final result = Movie.fromJson(json);

      // Then
      expect(result == expected, true);
    });

    test('toJson()는 Movie 인스턴스로 Json(Map)을 생성한다.', () async {
      // Given
      final movie = Movie(title: 'Star Wars', director: 'George Lucas', year: 1977);
      Map<String, dynamic> json = { 'title': 'Star Wars', 'director': 'George Lucas', 'year': 1977 };

      // When
      final result = movie.toJson();

      // Then
      expect(MapEquality().equals(result, json), true);
    });

    test('copyWith()는 Movie 인스턴스를 통해 Movie 인스턴스를 생성한다.', () async {
      // Given
      final origin = Movie(title: 'Star Wars', director: 'George Lucas', year: 1977);
      // When
      final result = Movie.copyWith(origin);

      // Then
      expect(result == origin, true);
    });
  });
}