import 'dart:convert';
import 'dart:io';
import 'package:learn_dart_together/24_03_19/03_json.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('json 테스트', () {
    Department department = Department('인사과', Employee('홍길동', 41));

    final text = jsonEncode(department.toJson());

    final file = File('lib/24_03_19/company.txt');
    file.writeAsStringSync(text);
  });
}