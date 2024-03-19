import 'dart:convert';
import 'dart:io';
import 'package:learn_dart_together/24_03_19/department.dart';
import 'package:learn_dart_together/24_03_19/employee.dart';
import 'package:learn_dart_together/24_03_19/file_control.dart';

void main() {
  Employee mrHong = Employee(name: '홍길동', age: 41);
  Department generalAffair = Department(name: '총무팀', leader: mrHong);
  Map<String,dynamic> beforeEncode = generalAffair.toJson();
  String encodedJSON = jsonEncode(beforeEncode);

  final fileDirectoryPath = './lib/24_03_19/file_copy/';
  final company = File('${fileDirectoryPath}company.txt');
  company.writeAsStringSync(encodedJSON);
}