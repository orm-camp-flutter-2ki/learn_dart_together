import 'package:collection/collection.dart';
import 'package:learn_dart_together/datasource/dt_user.dart';
import 'package:test/test.dart';

void main() {
  group('Company 클래스의', () {
    test('fromJson()는 Json(Map)을 통해 Company를 생성한다.', () async {
      // Given
      final expected = Company(name: '종현 그룹', catchPhrase: '하면 된다!', bs: '없음');
      Map<String, dynamic> json = {
        'name': '종현 그룹',
        'catchPhrase': '하면 된다!',
        'bs': '없음'
      };

      // When
      final result = Company.fromJson(json);

      // Then
      expect(result == expected, true);
    });

    test('toJson()는 Company로 Json(Map)을 생성한다.', () async {
      // Given
      final company = Company(name: '종현 그룹', catchPhrase: '하면 된다!', bs: '없음');
      Map<String, dynamic> expected = {
        'name': '종현 그룹',
        'catchPhrase': '하면 된다!',
        'bs': '없음'
      };

      // When
      final result = company.toJson();

      // Then
      expect(MapEquality().equals(result, expected), true);
    });

    test('copyWith()는 Company를 통해 복사본 Company를 생성한다.', () async {
      // Given
      final origin = Company(name: '종현 그룹', catchPhrase: '하면 된다!', bs: '없음');
      // When
      final copied = Company.copyWith(origin: origin, name: '전종현 그룹');

      // Then
      expect(copied == origin, false);
    });
  });
}
