import 'package:learn_dart_together/240326/data_source/user.dart';
import 'package:learn_dart_together/240326/model/user_api.dart';
import 'package:test/test.dart';

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
        website: 'hildegard.org',
        company: company);

    //when
    List<User> user = await UserApi().getUsers();

    //then
    expect(user[0], sol);
  });
}
