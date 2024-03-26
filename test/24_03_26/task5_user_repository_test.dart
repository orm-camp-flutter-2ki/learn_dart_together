import 'package:learn_dart_together/24_03_26/data_source/task5_user_api.dart';
import 'package:learn_dart_together/24_03_26/model_class/task5_address.dart';
import 'package:learn_dart_together/24_03_26/model_class/task5_company.dart';
import 'package:learn_dart_together/24_03_26/model_class/task5_geo.dart';
import 'package:test/test.dart';
import 'package:learn_dart_together/24_03_26/model_class/task5_user.dart';

void main() {
  group('User', () {
    User? user;

    setUp(() {
      user = User(
        id: 1,
        name: '박상준',
        username: '상준',
        email: '상준@example.com',
        address: Address(
          street: '000 Street',
          suite: 'Apt 104',
          city: 'Seongnam',
          zipcode: '13244',
          geo: Geo(lat: '111', lng: '111'),
        ),
        phone: '010-****-****',
        website: 'tearcode**.tistory.com',
        company: Company(
          name: 'ABC Company',
          catchPhrase: '이토록 아름다운 - SG 워너비',
          bs: '강력한 1인군단이 되자',
        ),
      );
    });

    test('User toJson() 테스트', () {
      final json = user!.toJson();

      expect(json, isA<Map>());
    });

    test('User.fromJson() 테스트', () {
      final Map<String, dynamic> json = {
        'id': 1,
        'name': '문찬양',
        'username': '찬양',
        'email': '찬양@example.com',
        'address': {
          'street': '기흥 어딘가',
          'suite': '몰라',
          'city': '촌동네',
          'zipcode': '0000',
          'geo': {'lat': '000', 'lng': '000'}
        },
        'phone': '010-9#)@-%%%%',
        'website': '몰라.com',
        'company': {
          'name': '반려동물 디자인 회사',
          'catchPhrase': '화이팅해라',
          'bs': '사원',
        },
      };

      final newUser = User.fromJson(json);

      expect(newUser, isA<User>());
      expect(newUser.name, equals('문찬양'));
    });

    test('copyWith() 테스트', () {
      final newUser = user!.copyWith(name: '찬양');

      expect(newUser, isA<User>());
      expect(newUser.name, equals('찬양'));
    });
  });

  group('UserApi 테스트', () {
    late UserApi userApi;

    setUp(() {
      userApi = UserApi();
    });

    test('getUsers() 테스트', () async {
      final users = await userApi.getUsers();

      expect(users, isA<List<User>>());
    });

    test('getUsersTop10ByUserName() 테스트', () async {
      final topUsers = await userApi.getUsersTop10ByUserName();

      expect(topUsers, isA<List<User>>());
      expect(topUsers.length, equals(10));
    });
  });
}
