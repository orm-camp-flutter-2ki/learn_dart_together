import 'dart:convert';
import 'dart:io';
import 'package:learn_dart_together/240319/company.dart';
import 'package:test/test.dart';

void main() {
  test('Company Test', () {
    Departemnet hong = Departemnet('총무부', Employee('홍길동', 41));
    File companyFile = File('lib/240319/company.txt');
    String jsonString = jsonEncode(hong.toJson());
    companyFile.writeAsStringSync(jsonString);

    jsonString = File('lib/240319/company.txt').readAsStringSync();
    final Map<String, dynamic> json = jsonDecode(jsonString);

    Departemnet decodehong = Departemnet.fromJson(json);

    expect(decodehong.name, '총무부');
    expect(decodehong.leader.name, '홍길동');
    expect(decodehong.leader.age, 41);
  });
}
