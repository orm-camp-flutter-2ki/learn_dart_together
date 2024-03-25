import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/240319/employee.dart';
import 'package:test/test.dart';


void main() {
   test('employee test', () {

     final department = Department('총무부', Employee('홍길동', 41));

     String jsonString = jsonEncode(department.toJson());

     File('Company.txt').writeAsStringSync(jsonString);

     jsonString = File('company.txt').readAsStringSync();
     final Map<String, dynamic> json = jsonDecode(jsonString);

     Department decodedDepartment = Department.fromJson(json);

     expect(decodedDepartment.name, '총무부');
     expect(decodedDepartment.leader.name, '홍길동');
     expect(decodedDepartment.leader.age, 41);
  });
}