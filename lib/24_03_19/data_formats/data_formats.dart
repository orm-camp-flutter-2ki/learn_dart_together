import 'dart:io';

import 'package:learn_dart_together/24_03_19/data_formats/department.dart';
import 'package:learn_dart_together/24_03_19/data_formats/employee.dart';

void main() {
  // 인스턴스 생성
  Employee hong = Employee('홍길동', 41);
  Department generalAffair = Department('총무부', hong);

  // 직렬화
  final serialized = generalAffair.toJson();

  // String으로 변경
  String jsonToString = serialized.toString();

  // company.txt
  final companyFile = File('company.txt');

  // company.txt에 String 작성
  companyFile.writeAsStringSync(jsonToString);
}
