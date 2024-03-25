import 'package:test/test.dart';
import 'package:learn_dart_together/data_source/user_api.dart';

void main() {
  group('UserApi', () {
    test('getUsers() returns a list of users', () async {
      // Given
      UserApi userApi = UserApi();
      // When
      List<User> users = await userApi.getUsers();
      // Then
      expect(users, isA<List<User>>());
      expect(users.first, isA<User>());
      expect(users.length, greaterThan(0));
    });

    test('getTodo() returns a specific todo', () async {
      // Given
      UserApi todoApi = UserApi();
      int userId = 1; // userId to desired todo ID
      // When
      User user = await todoApi.getUser(userId);
      // Then
      expect(user, isA<User>());
      expect(user.id, userId);
    });

    test('user.first is equal to the user with userID=1', () async {
      // Given
      UserApi userApi = UserApi();
      int userId = 1;
      // When
      List<User> users = await userApi.getUsers();
      User user = await userApi.getUser(userId);
      // Then
      expect(users.first, equals(user));
    });
  });
}