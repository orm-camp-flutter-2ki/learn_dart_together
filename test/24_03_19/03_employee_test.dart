import 'dart:convert';

import 'package:learn_dart_together/24_03_19/03_employee.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

// 테스트코드 작성
void main() {
  Employee leader = Employee('홍길동', 41);
  Department department = Department('총무부', leader);

  test('department의 encoding 확인', () {
    // given
    String jsonString = jsonEncode(department); // Encoding

    // when
    Map<String, dynamic> json = jsonDecode(jsonString); // Decoding
    String encodingJson = jsonEncode(json);

    // then
    expect(jsonString == encodingJson, true);
  });
}