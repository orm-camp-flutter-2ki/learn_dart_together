import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/24_03_19/data_formats/department.dart';
import 'package:learn_dart_together/24_03_19/data_formats/employee.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('serialize test', () {
    // given
    Employee hong = Employee('홍길동', 41);
    Department generalAffair = Department('총무부', hong);

    // when
    final serialized = generalAffair.toJson();

    // then
    expect(serialized.toString(), '{name: 총무부, leader: {name: 홍길동, age: 41}}');
  });

  test('deserialize test', () {
    // given
    Employee hong = Employee('홍길동', 41);
    Department generalAffair = Department('총무부', hong);

    // when
    final serialized = generalAffair.toJson();
    String jsonToString = jsonEncode(serialized);
    Map<String, dynamic> deserialized = jsonDecode(jsonToString);

    // then
    expect(deserialized['name'], equals('총무부'));
    expect(deserialized['leader'], equals({'name': '홍길동', 'age': 41}));
  });

  test('company file test', () {
    // given
    Employee hong = Employee('홍길동', 41);
    Department generalAffair = Department('총무부', hong);

    // when
    final serialized = generalAffair.toJson();
    String jsonToString = jsonEncode(serialized);
    final companyFile = File('company.txt');

    companyFile.writeAsStringSync(jsonToString);

    // then
    expect(companyFile.readAsStringSync() == jsonToString, true);
  });
}
