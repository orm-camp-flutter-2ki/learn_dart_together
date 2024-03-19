import 'dart:convert';
import 'dart:io';
import 'package:learn_dart_together/240319/quiz_2.dart';
import 'package:learn_dart_together/240319/quiz_3-1.dart';
import 'package:learn_dart_together/240319/quiz_3.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main() {
  test('quiz_2', () {
    final sourceFilePath = '/Users/jungeunhan/learn_dart_together/lib/240319/main.dart'; // 원본 파일 경로
    final duplicateFilePath = '/Users/jungeunhan/learn_dart_together/lib/240319/testCopy.dart'; // 복사본 파일 경로

    copy(sourceFilePath, duplicateFilePath);
    print("복사 완료");
  });
  test('quiz_3', () {
    Employee employee = Employee('홍길동', 41);
    Department department = Department(employee, '총무부'); //employee 객체 이니까 따옴표 없어야 함
    //Department 직렬할거니까 json
    Map<String, dynamic> json = department.toJson(); //디코드는 역직렬화 디파트먼트의 투 제이슨 메서드 넣었다.

    String jsonString;
    jsonString = jsonEncode(json);
    print(jsonString); //실제 제이슨
    print(json); //맵 형태 제이슨

    File sourceFile = File('/Users/jungeunhan/learn_dart_together/lib/240319/company.txt'); //파일 경로
    sourceFile.writeAsStringSync(jsonString);
  });
}
