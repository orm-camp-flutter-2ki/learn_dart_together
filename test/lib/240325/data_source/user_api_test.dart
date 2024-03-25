import 'package:learn_dart_together/240325/data_source/user_api.dart';
import 'package:learn_dart_together/240325/model/user.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('User 데이터', () {

    UserApi userApi = UserApi();

    test('과제3. 복잡한 Json List 를 List<User> 로 변환', () async {
      // Given
      String uri = 'https://jsonplaceholder.typicode.com/users';
      

      // When
      List<User> userList = await userApi.jsonToList(uri);
      
      // Then
      expect(userList.first.name, 'Leanne Graham');
      expect(userList.first.userName, 'Bret');
      expect(userList.first.address.zipcode, '92998-3874');
      expect(userList.first.address.geo.lat, '-37.3159');
      expect(userList.first.company.name, 'Romaguera-Crona');
    });
  });
}