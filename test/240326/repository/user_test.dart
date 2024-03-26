import 'package:test/test.dart';
import 'package:learn_dart_together/240326/repository/user/user_repository_impl.dart';

void main() {
  group('UserRepositoryImpl', () {
    test('getUsers and getUsersTop10ByUserName', () async {
      // Given
      final userRepository = UserRepositoryImpl();

      // When
      final users = await userRepository.getUsers();
      final top10Users = await userRepository.getUsersTop10ByUserName();

      // Then
      // Top10 유저 리스트의 길이가 10인지 검증
      expect(top10Users.length, equals(10));
      // Top10 유저가 중복된 유저가 없는지 검증
      expect(top10Users.toSet().length, equals(10));
    });
  });
}
