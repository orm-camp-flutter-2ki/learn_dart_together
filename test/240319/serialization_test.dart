import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/240319/department.dart';
import 'package:learn_dart_together/240319/employee.dart';
import 'package:test/test.dart';

void main() {
  group('Serialization test ', () {
    test('직렬화한 결과가 출력하고자 하는 값과 동일함을 확인한다.', () {
      // Given
      Employee employee = Employee('홍길동', 41);
      Department department = Department('총무부', employee);
      Map<String, dynamic> data = {
        'name': '총무부',
        'leader': {
          'name': '홍길동',
          'age': 41,
        }
      };

      // When
      bool result = data.toString() == department.toJson().toString();

      // Then
      expect(result, isTrue);
    });
  });
}
