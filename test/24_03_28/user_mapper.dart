import 'package:learn_dart_together/24_03_28/dto/user_dto.dart';
import 'package:learn_dart_together/24_03_28/mapper/user_mapper.dart';
import 'package:learn_dart_together/24_03_28/model/user.dart';
import 'package:test/test.dart';

void main() {
  group('UserMapper 확장함수의', () {
    // User toUser()
    group('toUser()는', () {
      test('UserDto를 User로 반환한다.', () {
        // Given
        final userDto = UserDto(
            id: 27,
            name: '전종현',
            username: '전종현',
            email: 'abcdefg@gmail.com',
            phone: '010-0000-0000',
            website: 'www.전종현.com',
            address: AddressDto(
                city: 'Seoul',
                geo: Geo(lat: '37.4586', lng: '128.5468'),
                street: '동일로',
                suite: '138',
                zipcode: '18388'),
            company: CompanyDto(name: '종현 그룹', catchPhrase: '하면 된다!', bs: '없음'));
        final expected = User(
            name: '전종현',
            email: 'abcdefg@gmail.com',
            latitude: 37.4586,
            longitude: 128.5468);

        // When
        final user = userDto.toUser();

        // Then
        expect(userDto.isValid, isTrue);
        expect(user == expected, isTrue);
      });

      test('유효하지 않은 StoreDto에 대해 에러를 발생시킨다.', () {
        // Given
        final userDto = UserDto(
            id: 27,
            name: 'null',
            username: '전종현',
            email: 'abcdefg@gmail.com',
            phone: '010-0000-0000',
            website: 'www.전종현.com',
            address: AddressDto(
                city: 'Seoul',
                geo: Geo(lat: '37.4586', lng: '128.5468'),
                street: '동일로',
                suite: '138',
                zipcode: '18388'),
            company: CompanyDto(name: '종현 그룹', catchPhrase: '하면 된다!', bs: '없음'));

        // When
        masksError() => userDto.toUser();

        // Then
        expect(masksError, throwsException);
      });
    });
  });
}
