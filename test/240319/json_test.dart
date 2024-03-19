import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/240319/department.dart';
import 'package:learn_dart_together/240319/employee.dart';
import 'package:test/test.dart';

void main() {
  test('jsonTest', () {
    Employee leader = Employee('김윤아', 54);
    Department department = Department('총무부', leader);

    final testText = department.toJson();
    String testString = jsonEncode(testText);

    final sourceFile = File('company.text');
    sourceFile.writeAsStringSync(testString);
    final sourcetext = sourceFile.readAsStringSync();
    final fileJson = jsonDecode(sourcetext);
    String departName = fileJson['name'];
    expect(departName, equals('총무부'));
  });

  test('jsonTest2', () {
    final sourceFile = File('company.text');
    final sourcetext = sourceFile.readAsStringSync();
    final fileJson = jsonDecode(sourcetext);
    Department department1 = Department.from(fileJson);

    expect(department1.leader.name, equals('김윤아'));
  });
}