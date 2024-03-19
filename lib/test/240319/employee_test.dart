import 'dart:convert';
import 'dart:io';
import 'package:test/test.dart';
import 'package:learn_dart_together/240319/employee.dart';

void main() {
  test('employee Test', () {
    // 생성자 생성
    Employee leader = Employee('홍길동', 41);
    Department department = Department('총무부', leader);
    // department를 json 형태의 String으로 저장
    final jsonString = jsonEncode(department.toJson());
    // 파일 새성
    final file = File('company.txt');
    // 파일에 내용 작성
    file.writeAsStringSync(jsonString);
    // company.txt에 내용 읽어서 filejson 으로 저장
    final fileJson = file.readAsStringSync();
    // 내용 확인
    print(fileJson);
  });
}
