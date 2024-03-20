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
      // 직렬화
      // 객체를 json 형태로 표현
      var jsonSerialize = department!.toJson();

      // 새로운 방법
      // jsonEncode 가 toJson 을 자동 호출해서 직렬화해준다.
      // jsonEncode(jsonSerialize); = jsonEncode(department);

      // 역직렬화
      // json 형태를 객체로 변환
      var jsonDeserialize = Department.fromJson(jsonSerialize);

      // 인코딩(Map 을 String 으로 변환)하여
      // 직렬화가 역직렬화가 가능한지 확인
      expect(jsonEncode(jsonSerialize), equals(jsonEncode(jsonDeserialize)));

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
