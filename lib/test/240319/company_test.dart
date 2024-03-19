import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/240314/ab_class.dart';
import 'package:test/test.dart';

import '../../240319/company.dart';

void main() {
  test('Company Test', () {
    Departemnet hong = Departemnet('총무부', Employee('홍길동', 41));
    File companyFile = File('lib/240319/company.txt');

    companyFile.writeAsStringSync(hong.toJson().toString());

    expect(companyFile.readAsStringSync().toString(), hong.toJson().toString());
  });
}
