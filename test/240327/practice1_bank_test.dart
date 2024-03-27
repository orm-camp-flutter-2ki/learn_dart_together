import 'package:learn_dart_together/240327/data_source/bank_api.dart';
import 'package:learn_dart_together/240327/practice1_bank.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Bank 직렬화&역직렬화', () {
    // Given
    final testUserdata = userData;

    // When
    final bank = Bank.fromJson(testUserdata); // Given 자료를 fromJson함.
    final serializedUserData = bank.toJson(); //직렬화
    final deserializedBank = Bank.fromJson(serializedUserData); //역직렬화

    // Then
    expect(bank.name, equals('홍길동'));
    expect(bank.name, deserializedBank.name);
  });
}
