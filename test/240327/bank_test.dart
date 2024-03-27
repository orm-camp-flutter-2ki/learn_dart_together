import 'dart:convert';

import 'package:learn_dart_together/240327/model/bank.dart';
import 'package:test/test.dart';

import 'expected_result.dart';

void main() {
  test('bank test', () {
    // expected에서 type 'Null' is not a subtype of type 'String' in type cast
    final expected = Bank.fromJson(bankData);
    final bool result1 = expected.name == bankData['name'];
    final bool result2 = expected.address == bankData['address'];
    final bool result3 = expected.phone == bankData['phone'];

    expect(result1, isTrue);
    expect(result2, isTrue);
    expect(result3, isTrue);
  });
}
