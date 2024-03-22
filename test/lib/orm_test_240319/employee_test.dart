import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/orm_240319/employee.dart';
import 'package:test/test.dart';

void main() {
  test('jsontest', () {
    Employee leader = Employee('홍길동', 41);
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
}
