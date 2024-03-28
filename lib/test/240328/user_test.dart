import 'package:learn_dart_together/240328/mapper/user_mapper.dart';
import 'package:test/test.dart';

import '../../240328/dto/user_dto.dart';

void main() {
  group('UserDto to User mapping', () {
    test('Mapping Test', () {
      // Given
      final userDto = UserDto(
        id: 1,
        name: '이순신',
        username: '홍',
        email: 'hong.doe@example.com',
        phone: '123-456-7890',
        website: 'example.com',
        address: AddressDto(
          city: 'New York',
          geo: GeoDto(
            lat: '40.7128',
            lng: '74.0060',
          ),
          street: '123 Main St',
          suite: 'Apt. 101',
          zipcode: '10001',
        ),
        company: CompanyDto(
          name: 'ACME Inc.',
          catchPhrase: 'Making the world a better place',
          bs: 'Software development',
        ),
      );

      final user = userDto.toUser();

      expect(user.name, equals('이순신'));
      expect(user.email, equals('hong.doe@example.com'));
      expect(user.latitude, equals(40.7128));
      expect(user.longitude, equals(74.0060));
    });
  });
}
