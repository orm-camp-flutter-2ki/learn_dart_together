import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_28/dto/address_dto.dart';
import 'package:learn_dart_together/24_03_28/dto/company_dto.dart';
import 'package:learn_dart_together/24_03_28/dto/geo_dto.dart';
import 'package:learn_dart_together/24_03_28/dto/user_dto.dart';
import 'package:learn_dart_together/24_03_28/mapper/user_mapper.dart';
import 'package:learn_dart_together/24_03_28/repository/impl/user_repository_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../mock/mock_user_api_impl.dart';

void main() {
  group('MaskRepositoryImpl 클래스', () {
    final userApi = MockUserApiImpl();
    final userRepository = UserRepositoryImpl(userApi: userApi);
    final List<UserDto> users = [
      UserDto(
          id: 1,
          name: 'Leanne Graham',
          username: 'Bret',
          email: 'Sincere@april.biz',
          address: AddressDto(
              street: "Kulas Light",
              suite: "Apt. 556",
              city: "Gwenborough",
              geo: GeoDto(
                lat: "-37.3159",
                lng: "81.1496",
              ),
              zipcode: "92998-3874"),
          phone: "1-770-736-8031 x56442",
          website: "hildegard.org",
          company: CompanyDto(
              name: "Romaguera-Crona",
              catchPhrase: "Multi-layered client-server neural-net",
              bs: "harness real-time e-markets"))
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
        expect(result.equals(users.map((e) => e.toUser()).toList()), isTrue);
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
