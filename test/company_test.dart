import 'package:learn_dart_together/24_03_19/department.dart';
import 'package:learn_dart_together/24_03_19/employee.dart';
import 'package:test/test.dart';
import 'dart:io';
import 'dart:convert';

void main() {
  test('과제 테스트', () {
    // Employee에서 이름과 나이 = 홍길동(41세)
    Employee leader = Employee('홍길동', 41);

    // Department에서 부서와 리더 = 총무부 리더
    Department department = Department('총무부', leader);

    // 직렬화를 위해 json타입으로 변환
    String jsonString = jsonEncode(department.toJson());

    // 직렬화 한 인스턴스를 기록할 파일
    final reportFile = File('company.txt');

    // 인스턴스  기록
    reportFile.writeAsStringSync(jsonString);

    // 파일에서 JSON 문자열 읽기
    String readJsonString = reportFile.readAsStringSync();

    // 읽은 JSON 문자열을 다시 Dart 객체로 변환
    final decodedData = jsonDecode(readJsonString);

    // 변환된 데이터에서 'name' 값을 가져와서 검증
    String departmentName = decodedData['name'];

    // 'expect' 함수를 사용해 가져온 부서 이름이 '총무부'인지 확인
    expect(departmentName, equals('총무부'));
  });
}
