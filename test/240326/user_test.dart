import 'package:learn_dart_together/240326/data_source/user.dart';
import 'package:learn_dart_together/240326/repository/user_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  test('UserRepositoryImpl.getUsers 메소드를 호출한다', () async {
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
    List<User> user = await UserRepositoryImpl().getUsers();

    //then
    expect(user.first, sol);
  });
  test('UserRepositoryImpl.getUsersTop10ByName 메소드를 호출한다', () async {
    //given
    Geo geo = Geo(
      lat: '-31.8129',
      lng: '62.5342',
    );

    Address address = Address(
      street: 'kiles Walks',
      suite: 'Suite 351',
      city: 'Roscoeview',
      zipcode: '33263',
      geo: geo,
    );

    Company company = Company(
      name: 'Keebler LLC',
      catchPhrase: 'User-centric fault-tolerant solution',
      bs: 'revolutionize end-to-end systems',
    );

    User sol = User(
      id: 5,
      name: 'Chelsey Dietrich',
      username: 'Kamren',
      email: 'Lucio_Hettinger@annie.ca',
      address: address,
      phone: '(254)954-1289',
      website: 'demarco.info',
      company: company,
    );

    //when
    List<User> user = await UserRepositoryImpl().getUsersTop10ByName();

    //then
    expect(user.first.name, sol.name);
  });
}
