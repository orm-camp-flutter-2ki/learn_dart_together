import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/0319/company.dart';

void main() {
  /// 생성자 생성
  Department affairsTeam =
      Department(departmentTeam: '총무부', officeTel: '02)000-0000');
  Employee affairsLeader =
      Employee(name: '홍길동', companyHierarchy: '팀장', age: 41);

  /// company.txt 생성 및 경로 지정, 시작 멘트 작성
  final companyTextFile =
      File('/Users/yong/Desktop/learn_dart_together/lib/0319/company.txt');
  companyTextFile.writeAsString('[Company Text File]\n');

  /// 직렬화 : class -> toJason()
  String departmentString = jsonEncode(affairsTeam.toJason());
  String employeeString = jsonEncode(affairsLeader.toJason());

  /// 직렬화 된 내용 .txt에 넣기
  companyTextFile.writeAsStringSync(departmentString, mode: FileMode.append);
  companyTextFile.writeAsStringSync('\n$employeeString', mode: FileMode.append);

  /// 직렬화 확인하기
  print('============ 직렬화 출력 ============');
  print(departmentString);
  print(employeeString);

  /// 역직렬화 하기
  Map<String, dynamic> departmentJson = jsonDecode(departmentString);
  Map<String, dynamic> employeeJson = jsonDecode(employeeString);

  Department departmentFromJason = Department.fromJason(departmentJson);
  Employee employeeFromJason = Employee.fromJason(employeeJson);

  print('============ 역직렬화 출력 ============');
  print(departmentFromJason);
  print(employeeFromJason);
}

// 역직렬화: JSON 형식의 문자열을 객체로 변환
// Map<String, dynamic> jsonMap = jsonDecode(jsonString);
// Employee newEmployee = Employee.fromJson(jsonMap);
// print('역직렬화 결과: $newEmployee');
