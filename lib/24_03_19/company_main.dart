import 'dart:convert';
import 'dart:io';
import 'department.dart';
import 'employee.dart';

//총무부 리더 ‘홍길동(41세)’의 인스턴스를 생성하고 임의의 부서에 소속되게 하고 직렬화하여 company.txt
// 파일에 쓰는 프로그램을 작성하시오.
// 직렬화를 위해 위의 2개 클래스를 일부 수정해도 됩니다.

void main() {

  Department department = Department('총무부', Employee('홍길동', 41, null)); // Employee 생성자에선 홍길동씨의 부서 배치를 일단.. null로 초기화

  Employee leader = Employee('홍길동', 41, department);

  // 직렬화하여 파일에 쓰기
  String jsonString = jsonEncode(leader.toJson());
  File('company.txt').writeAsStringSync(jsonString);

  print('😁🌼🌸 직렬화가 완료됐습니다. 홍길동씨 오늘도 화이팅 🌼🌸😁');

  File file = File('company.txt');

  String fileContent = file.readAsStringSync();
}
