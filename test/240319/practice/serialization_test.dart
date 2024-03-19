import 'dart:convert';
import 'dart:io';

import 'package:dart_cli_practice/240319/practice/serialization.dart';
import 'package:test/test.dart';

void main() {
  Employee? employee;
  Department? department;
  String? departmentJson;

  setUp(() {
    employee = Employee('홍길동', 41);
    department = Department('총무부', employee!);
    departmentJson = '{"name":"총무부","leader":{"name":"홍길동","age":41}}';
  });

  tearDown(() {
    employee = department = null;
  });

  test('원본 json과 객체를 직렬화 한 결과는 동일하다.', () {
    Map<String, dynamic> json = department!.toJson();
    String jsonString = jsonEncode(json);

    expect(jsonString, equals(departmentJson));
  });

  test('파일에 저장한 json을 역직렬화한 객체는 원본 객체와 동일하다.', () {
    File file = File('test/240319/practice/company.txt');
    String jsonString = file.readAsStringSync();

    Map<String, dynamic> json = jsonDecode(jsonString);
    Department restoredJson = Department.fromJson(json);

    expect(restoredJson, equals(department));
  });
}