import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/240319/serialize.dart';
import 'package:test/test.dart';

void main() {
  test('Serialize/Deserialize Test', () {
    Employee employee = Employee('홍길동', 41);
    Department department = Department('총무부', employee);

    department.createTxtFile();

    final file = File('test/240319/company.txt');
    final text = file.readAsStringSync();

    final department2 = Department.fromJson(jsonDecode(text));

    expect(department.name == department2.name, true);
    expect(department.leader.name == department2.leader.name, true);
    expect(department.leader.age == department2.leader.age, true);
  });
}