import 'dart:convert';
import 'dart:io';
import 'package:test/test.dart';
import 'package:learn_dart_together/24_03_19/department.dart';
import 'package:learn_dart_together/24_03_19/employee.dart';

void main() {
    test('json 테스트 시작', () {
        String currentDirectory = Directory.current.path; // 현재 이 파일이 있는 path
        final targetFile = File('$currentDirectory/company.txt'); // 목표로 삼는 파일

        Employee hong = Employee('홍길동', 41);
        Department department = Department('총무부', hong);

        final madeJson = department.toJson(); // jSON 생성
        String encodedString = jsonEncode(madeJson); // encoding

        targetFile.writeAsStringSync(encodedString); // 기록

        final recordedText = targetFile.readAsStringSync();
        final newJson = jsonDecode(recordedText);

        String departName = newJson['name'];
        expect(departName, equals('총무부'));
    });
}