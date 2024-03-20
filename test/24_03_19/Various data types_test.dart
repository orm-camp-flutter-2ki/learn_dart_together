import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/24_03_19/Various%20data%20types.dart';
import 'package:test/test.dart';

void main() {

  test('json test', ()
  {
    final hong = Department('총무부', Employee('홍길동', 41));
    String jsonStr = jsonEncode(hong.toJson());
    // String jsonStr = jsonEncode(hong); // toJson을 하지 않아도 암시적으로 toJson을 자동 호출.
    // String jsonStr = hong.toJson().toString();
    File('company.txt').writeAsStringSync(jsonStr);

    jsonStr =File('company.txt').readAsStringSync();
    final Map<String, dynamic> json = jsonDecode(jsonStr);
    Department decodedHong = Department.fromJson(json);

    expect(decodedHong.leader.name, '홍길동');

  });

}
