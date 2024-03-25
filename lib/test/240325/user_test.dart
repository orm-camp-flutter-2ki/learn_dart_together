import 'package:test/test.dart';
import '../../240325/user.dart';
import '../../data_source/user_api.dart';

void main() {
  test('user test', () async {
    //given
    Geo geo = Geo(
      lat: '-37.3159',
      lng: '81.1496',
    );

    Address address = Address(
        street: 'Kulas Light',
        suite: 'Apt. 556',
        city: 'Gwenborough',
        zipcode: '92998-3874',
        geo: geo);

    Company company = Company(
        name: 'Romaguera-Crona',
        catchPhrase: 'Multi-layered client-server neural-net',
        bs: 'harness real-time e-markets');

    User sol = User(
        id: 1,
        name: 'Leanne Graham',
        username: 'Bret',
        email: 'Sincere@april.biz',
        address: address,
        phone: '1-770-736-8031 x56442',
        website: 'ildegard.org',
        company: company);

    //when
    List<User> user = await UserApi().getUsers();

    //then
    // print(sol);
    // print(user[0]);
    expect(user[0].address.geo, sol.address.geo);
  });
}
//유저 필드를 스테틱으로 필드명 자체를 유저네임을 문자열 네임