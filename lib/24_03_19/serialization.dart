import 'dart:io';
import 'package:learn_dart_together/24_03_19/serialization/implements/department.dart';
import 'package:learn_dart_together/24_03_19/serialization/implements/employee.dart';

void main() {
  Employee mrHong = Employee(name: '홍길동', age: 41);
  Department generalAffair = Department(name: '총무팀', leader: mrHong);
  String json = generalAffair.toJson();

  final fileDirectoryPath = './lib/24_03_19/file_copy/';
  final company = File('${fileDirectoryPath}company.txt');
  company.writeAsStringSync(json);
}