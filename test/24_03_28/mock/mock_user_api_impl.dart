import 'package:learn_dart_together/24_03_28/data_source/interface/user_api.dart';
import 'package:learn_dart_together/24_03_28/dto/address_dto.dart';
import 'package:learn_dart_together/24_03_28/dto/company_dto.dart';
import 'package:learn_dart_together/24_03_28/dto/geo_dto.dart';
import 'package:learn_dart_together/24_03_28/dto/user_dto.dart';
import 'package:mockito/mockito.dart';

class MockUserApiImpl extends Mock implements UserApi {
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

  @override
  Future<List<UserDto>> getUsers() async {
    return super.noSuchMethod(Invocation.getter(#getUsers),
        returnValue: users, returnValueForMissingStub: users);
  }
}
