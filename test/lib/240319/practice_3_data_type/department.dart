import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/240319/practice_3_data_type/department.dart';
import 'package:learn_dart_together/240319/practice_3_data_type/employee.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('총무부 리더 홍길동(41세)의 인스턴스를 생성하고 직렬화하여 '
      'company.txt 파일에 쓰는 프로그램을 작성하시오.', () {

    // Given(준비)
    Department? department;
    setUp(() => department = Department('총무부', Employee('홍길동', 41)));

    test('인스턴스를 직렬화', () {

      // Then(검증)
      print(department!.toJson());
    });

    test('company.txt 파일에 쓰는 프로그램을 작성하시오.', () {

      final file = File('company.txt');
      file.writeAsStringSync(jsonEncode(department!.toJson()));
      final companyText = file.readAsStringSync();

      // Then(검증)
      expect(jsonEncode(department!.toJson()), equals(companyText.toString()));
    });
  });
}
