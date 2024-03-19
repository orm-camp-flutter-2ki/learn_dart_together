import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/240319/department.dart';
import 'package:learn_dart_together/240319/employee.dart';

void main() {
  Employee employee = Employee('홍길동', 41);
  Department department = Department('총무부', employee);

  final String targetPath = 'lib/240319/company.txt';
  final File targetFile = File(targetPath);

  // Json 직렬화
  // 방법1. department클래스의 toJson 중 leader에 toJson() 필요
  Map<String, dynamic> serialized = department.toJson();

  // 방법2.
  //String serialized1 = jsonEncode(department);

  // 정렬
  JsonEncoder encoder = JsonEncoder.withIndent(' ');
  String jsonStr = encoder.convert(serialized);
  // 파일 쓰기
  targetFile.writeAsStringSync(jsonStr);
}
