import 'package:learn_dart_together/24_03_26/repository/05_user_repository_Impl.dart';
import 'package:learn_dart_together/24_03_28/repository/user_repository_impl2.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() async {
  test('연습문제2 - User', () async {
    //given
    final repository = UserRepositoryImpl2();
    final result = await repository.getUsers();

    //when
    final expected = result.first.lat;

    // then
    expect(expected.runtimeType == String,
        true);
    ///기존 GeoDto클래스의 latitude의 타입은
    ///double 이었으나, UserMapper에서 타입을 String으로 변환.
  });
}
