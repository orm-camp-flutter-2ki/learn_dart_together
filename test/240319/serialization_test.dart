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
    test('역직렬화한 결과를 출력한다.', () {
      // Given
      Employee employee = Employee('홍길동', 41);
      Department department = Department('총무부', employee);
      Map<String, dynamic> Deserialized = (department.toJson());
      // When
      bool result1 = Deserialized['name'] == '총무부';
      bool result2 = Deserialized['leader']['name'] == '홍길동';
      bool result3 = Deserialized['leader']['age'] == 41;

      // Then
      expect(result1, isTrue);
      expect(result2, isTrue);
      expect(result3, isTrue);
    });
    test('파일의 내용이 직렬화한 데이터와 동일한지 확인한다..', () {
      Employee employee = Employee('홍길동', 41);
      Department department = Department('총무부', employee);

      final String targetPath = 'lib/240319/company.txt';
      final File targetFile = File(targetPath);

      // 정렬
      JsonEncoder encoder = JsonEncoder.withIndent(' ');
      String jsonStr = encoder.convert(department.toJson());
      // 파일 쓰기
      targetFile.writeAsStringSync(jsonStr);

      // 파일 내용 읽어오기
      String fileContent = targetFile.readAsStringSync();

      // 원본과 파일 내용이 동일한지 확인
      expect(fileContent, equals(jsonStr));
    });
  });
}
