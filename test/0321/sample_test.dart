import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:csv/csv.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

final String todayDirectory =
    '/Users/yong/Desktop/learn_dart_together/lib/0320';

Future<void> copyReplaceFile(String sourcePath, String targetPath) async {
  // 소스 파일에서 문자열을 읽고 -> 바꾼 것을 저장
  try {
    String originFile = await File(sourcePath).readAsString();
    String replaceFile = originFile.replaceAll('한석봉', '김석봉');

    if (!(originFile.contains('한석봉')) || !(await File(sourcePath).exists())) {
      throw Exception('[error]\n 에러가 발생했습니다.');
    }

    // 복사할 파일에 쓰기
    await File(targetPath).writeAsString(replaceFile);
  } catch (e) {
    print(e);
  }
}

Future<void> main() async {
  final eq = DeepCollectionEquality().equals;
  final sample = File('$todayDirectory/sample.csv').openRead(); // 원본 경로
  final sampleCopy =
      File('$todayDirectory/sample_copy.csv').openRead(); // 카피 경로

  copyReplaceFile('/Users/yong/Desktop/learn_dart_together/lib/0321/sample.csv',
      '/Users/yong/Desktop/learn_dart_together/lib/0321/sample_copy.csv');

  test('csv file copy test', () async {
    expect(eq(sample, sampleCopy), false);
  });
}
