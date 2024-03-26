import 'package:learn_dart_together/240325/model/user.dart';
import 'package:learn_dart_together/240326/repository/user_repository.dart';
import 'package:learn_dart_together/240326/respository_impl/user_repo_impl.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main() {
  group('(필수 중급) 과제 5. Repository 작성 연습 5', () {
    // 다형성!!
    UserRepository userRepository = UserRepositoryImpl();

    test('Future<List<User>> getUsers() 생성', () async {
      // Given
      Map<String, dynamic> firstData = {
        "id": 1,
        "name": "Leanne Graham",
        "username": "Bret",
        "email": "Sincere@april.biz",
        "address": {
          "street": "Kulas Light",
          "suite": "Apt. 556",
          "city": "Gwenborough",
          "zipcode": "92998-3874",
          "geo": {"lat": "-37.3159", "lng": "81.1496"}
        },
        "phone": "1-770-736-8031 x56442",
        "website": "hildegard.org",
        "company": {
          "name": "Romaguera-Crona",
          "catchPhrase": "Multi-layered client-server neural-net",
          "bs": "harness real-time e-markets"
        }
      };
      final expected = User.fromJson(firstData);

      // When
      final dataList = await userRepository.getUsers();

      // Then
      expect(dataList[0].company.name == expected.company.name, true);
    });

    test('Future<List<User>> getUsersTop10ByUserName() 생성', () async {
      // When
      final dataList = await userRepository.getUsersTop10ByUserName();

      final expected = 10;
      final expectedUserName = 'Antonette';

      // Then
      if( dataList.length > 10 ) {
        expect(dataList.length == expected, true);
      }
      expect(dataList.first.userName, expectedUserName);
    });
  });
}
