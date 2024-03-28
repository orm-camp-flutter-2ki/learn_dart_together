import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_27/model/mask.dart';
import 'package:learn_dart_together/24_03_27/model/stores.dart';
import 'package:learn_dart_together/24_03_27/repositories/mask_repository_impl.dart';
import 'package:learn_dart_together/24_03_28/model/user.dart';
import 'package:learn_dart_together/24_03_28/repository/impl/user_repository_impl.dart';
import 'package:learn_dart_together/24_03_28/repository/interface/user_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../mock/mock_user_api_impl.dart';

void main() {
  group('MaskRepositoryImpl 클래스', () {
    final userApi = MockUserApiImpl();
    final userRepository = UserRepositoryImpl(userApi: userApi);
    final List<User> users = [
      User(
          name: '성종호',
          email: 'whdgh123@gmail.com',
          latitude: 1.1313,
          longitude: 0.1312),
      User(
          name: '곽튜브',
          email: 'tube@gmail.com',
          latitude: 1.1313,
          longitude: 0.1312),
    ];
    setUp(() {
      reset(userApi);
    });
    group('getUsers 메소드는', () {
      test('api.getUsers를 호출하고 받은 User 인스턴스를 반환한다.', () async {
        // Given
        when(userApi.getUsers()).thenAnswer((_) async => users);

        // When
        final result = await userRepository.getUsers();

        // Then
        expect(result.equals(users), isTrue);
      });

      test('api.getMask를 1번 호출한다.', () async {
        // Given
        when(userApi.getUsers()).thenAnswer((_) async => users);
        //
        // // When
        await userRepository.getUsers();
        //
        // // Then
        verify(userApi.getUsers()).called(1);
      });
    });
  });
}
