import 'dart:convert';
import 'dart:io';
import 'package:learn_dart_together/24_03_19/employee.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('인스턴스를 생성하고 직렬화하여 company.txt파일에 쓰는 프로그램을 작성하시오', () {


  Employee employee1 = Employee('홍길동', 1000);
  Department leader1 = Department('총무부', employee1);

  final Map<String, dynamic> text = leader1.toJson2();
  String stringText = jsonEncode(text);

  // print(stringText); // Json 형식의 String
  expect(stringText, jsonEncode({"name":"총무부","leader":{"name":"홍길동","age":1000}}));

  final myFile = File('company.txt');
  myFile.writeAsStringSync(stringText);



  //디코드
  final stringText2 = jsonDecode(stringText);         // map 으로 변환
  print(stringText2); // Map

  });
}
