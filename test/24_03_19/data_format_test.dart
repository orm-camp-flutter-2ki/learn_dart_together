import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/24_03_19/data_formats/department.dart';
import 'package:learn_dart_together/24_03_19/data_formats/employee.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('employee test', () {
    final department = Department('총무부', Employee('홍길동', 41));

    // String jsonString = jsonEncode(department.toJson());
    // https://api.flutter.dev/flutter/dart-convert/jsonEncode.html
    String jsonString = jsonEncode(department);

    File('company.txt').writeAsStringSync(jsonString);

    jsonString = File('company.txt').readAsStringSync();
    final json = jsonDecode(jsonString) as Map<String, dynamic>;

    Department decodedDepartment = Department.fromJson(json);

    expect(decodedDepartment.name, '총무부');
    expect(decodedDepartment.leader.name, '홍길동');
    expect(decodedDepartment.leader.age, 41);
  });
}
