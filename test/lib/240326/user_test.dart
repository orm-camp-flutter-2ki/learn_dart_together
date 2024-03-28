import 'package:learn_dart_together/240326/repository/user_repository.dart';
import 'package:learn_dart_together/240326/respository_impl/user_repo_impl.dart';
import 'package:learn_dart_together/240328/dto/user_dto.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main() {
  group('(필수 중급) 과제 5. Repository 작성 연습 5', () {
    // 다형성!!
    UserRepository userRepository = UserRepositoryImpl();

    group('''User 모델은 다음과 같은 내용을 가진다
            name : String, 
            email : String, 
            latitude : double, 
            longitude : double,''', () {

      test('latitude, longitude 데이터 타입이 double 인지 확인', () async {
        // When
        final dataList = await userRepository.getUsers();
        print(dataList.first.longitude.runtimeType);

        expect(dataList.first.latitude.runtimeType, double);
        expect(dataList.first.longitude.runtimeType, double);

      });

      test('User data class 를 통해 원하는 데이터만 getUsers() 로 가져오기', () async {
        // Given
        final expected = UserDto.fromJson(userData);
        double expectedLat = 0.0;
        double expectedLng = 0.0;

        // When
        final dataList = await userRepository.getUsers();

        if( expected.address?.geo?.lat != null ) {
          expectedLat = double.parse(expected.address!.geo!.lat!);
        }

        if( expected.address?.geo?.lng != null ) {
          expectedLng = double.parse(expected.address!.geo!.lng!);
        }

        expect(dataList.first.name, expected.name);
        expect(dataList.first.email, expected.email);
        expect(dataList.first.latitude, expectedLat);
        expect(dataList.first.longitude, expectedLng);
      });
    });

    test('Future<List<User>> getUsers() 생성', () async {
      // Given
      final expected = UserDto.fromJson(userData);

      // When
      final dataList = await userRepository.getUsers();

      // Then
      // expect(dataList[0].company.name == expected.company?.name, true);
    });

    test('Future<List<User>> getUsersTop10ByUserName() 생성', () async {
      // When
      final dataList = await userRepository.getUsersTop10ByUserName();

      final expected = 10;
      final expectedUserName = 'Antonette';

      // Then
      if (dataList.length > 10) {
        expect(dataList.length == expected, true);
      }
      // expect(dataList.first.userName, expectedUserName);
    });
  });
}

Map<String, dynamic> userData = {
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
