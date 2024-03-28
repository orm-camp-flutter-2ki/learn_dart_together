import 'package:learn_dart_together/240327/data_source/bank.dart';
import 'package:learn_dart_together/240327/repository/bank_repository_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(Bank, () {
    test('getClass test', () async {
      //given
      final sol = Bank('홍길동', '서울시 어쩌구 저쩌구', '010-1111-2222');

      //when
      final result = await BankRepositoryImpl().getClass();

      //then
      expect(result, sol);
    });
    test('getJson test', () async {
      //given
      final sol =
          '{"name":"홍길동","address":"서울시 어쩌구 저쩌구","phone":"010-1111-2222"}';

      //when
      final result = await BankRepositoryImpl().getJson();

      //then
      expect(result, sol);
    });
  });
}
