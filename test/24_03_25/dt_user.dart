import 'package:learn_dart_together/datasource/dt_user.dart';
import 'package:test/test.dart';

void main() {
  group('User 클래스의', () {
    test('fromJson()는 Json(Map)을 통해 User를 생성한다.', () async {
      // Given
      final expectedCompany =
          Company(name: '종현 그룹', catchPhrase: '하면 된다!', bs: '없음');
      final expected = User(
          id: 27,
          name: '전종현',
          email: 'abcdefg@gmail.com',
          website: 'www.전종현.com',
          company: expectedCompany);
      Map<String, dynamic> json = {
        'id': 27,
        'name': '전종현',
        'email': 'abcdefg@gmail.com',
        'website': 'www.전종현.com',
        'company': {'name': '종현 그룹', 'catchPhrase': '하면 된다!', 'bs': '없음'}
      };

      // When
      final result = User.fromJson(json);

      // Then
      expect(result == expected, true);
    });

    test('toJson()는 User로 Json(Map)을 생성한다.', () async {
      // Given
      final company = Company(name: '종현 그룹', catchPhrase: '하면 된다!', bs: '없음');
      final users = User(
          id: 27,
          name: '전종현',
          email: 'abcdefg@gmail.com',
          website: 'www.전종현.com',
          company: company);
      Map<String, dynamic> expected = {
        'id': 27,
        'name': '전종현',
        'email': 'abcdefg@gmail.com',
        'website': 'www.전종현.com',
        'company': {'name': '종현 그룹', 'catchPhrase': '하면 된다!', 'bs': '없음'}
      };

      // When
      final result = users.toJson();

      // Then
      expect(result.toString() == expected.toString(), true);
    });

    test('copyWith()는 User를 통해 복사본 User를 생성한다.', () async {
      // Given
      final company = Company(name: '종현 그룹', catchPhrase: '하면 된다!', bs: '없음');
      final origin = User(
          id: 27,
          name: '전종현',
          email: 'abcdefg@gmail.com',
          website: 'www.전종현.com',
          company: company);
      // When
      final copied = User.copyWith(origin: origin, id: 25);

      // Then
      expect(copied == origin, false);
    });
  });
}
