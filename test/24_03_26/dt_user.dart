import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_26/model/dt_user.dart';
import 'package:test/test.dart';

void main() {
  group('User 클래스의', () {
    test('fromJson()는 Json(Map)을 통해 User를 생성한다.', () async {
      // Given
      final expected = User(
          id: 27,
          name: '전종현',
          username: '전종현',
          email: 'abcdefg@gmail.com',
          phone: '010-0000-0000',
          website: 'www.전종현.com',
          address: Address(
              city: 'Seoul',
              geo: Geo(
                  lat: '37.4586',
                  lng: '128.5468'),
              street: '동일로',
              suite: '138',
              zipcode: '18388'),
          company: Company(
              name: '종현 그룹',
              catchPhrase: '하면 된다!',
              bs: '없음'));
      Map<String, dynamic> json = {
        'id': 27,
        'name': '전종현',
        'username': '전종현',
        'email': 'abcdefg@gmail.com',
        'phone': '010-0000-0000',
        'website': 'www.전종현.com',
        'address': {
          'city': 'Seoul',
          'geo': {'lat': '37.4586',
            'lng': '128.5468'},
          'street': '동일로',
          'suite': '138',
          'zipcode': '18388'
        },
        'company': {'name': '종현 그룹',
          'catchPhrase': '하면 된다!',
          'bs': '없음'}
      };

      // When
      final result = User.fromJson(json);

      // Then
      expect(result == expected, true);
    });

    test('toJson()는 User로 Json(Map)을 생성한다.', () async {
      // Given
      final user = User(
          id: 27,
          name: '전종현',
          username: '전종현',
          email: 'abcdefg@gmail.com',
          phone: '010-0000-0000',
          website: 'www.전종현.com',
          address: Address(
              city: 'Seoul',
              geo: Geo(
                  lat: '37.4586',
                  lng: '128.5468'),
              street: '동일로',
              suite: '138',
              zipcode: '18388'),
          company: Company(
              name: '종현 그룹',
              catchPhrase: '하면 된다!',
              bs: '없음'));
      Map<String, dynamic> expected = {
        'id': 27,
        'name': '전종현',
        'username': '전종현',
        'email': 'abcdefg@gmail.com',
        'phone': '010-0000-0000',
        'website': 'www.전종현.com',
        'address': {
          'city': 'Seoul',
          'geo': {'lat': '37.4586',
            'lng': '128.5468'},
          'street': '동일로',
          'suite': '138',
          'zipcode': '18388'
        },
        'company': {'name': '종현 그룹',
          'catchPhrase': '하면 된다!',
          'bs': '없음'}
      };

      // When
      final result = user.toJson();

      // Then
      expect(DeepCollectionEquality().equals(result, expected), true);
    });

    test('copyWith()는 User를 통해 복사본 User를 생성한다.', () async {
      // Given
      final origin = User(
          id: 27,
          name: '전종현',
          username: '전종현',
          email: 'abcdefg@gmail.com',
          phone: '010-0000-0000',
          website: 'www.전종현.com',
          address: Address(
              city: 'Seoul',
              geo: Geo(
                  lat: '37.4586',
                  lng: '128.5468'),
              street: '동일로',
              suite: '138',
              zipcode: '18388'),
          company: Company(
              name: '종현 그룹',
              catchPhrase: '하면 된다!',
              bs: '없음'));
      // When
      final copied = User.copyWith(origin: origin, id: 25);

      // Then
      expect(copied == origin, false);
    });
  });
}
