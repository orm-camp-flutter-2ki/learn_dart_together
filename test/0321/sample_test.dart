import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:csv/csv.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() async {
  final eq = DeepCollectionEquality().equals;

  final sample =
      File('/Users/yong/Desktop/learn_dart_together/lib/0321/sample.csv')
          .openRead(); // 원본 경로
  final sampleCopy =
      File('/Users/yong/Desktop/learn_dart_together/lib/0321/sample_copy.csv')
          .openRead(); // 카피 경로

  // csv toList() : 잘된건지는 모르겠다...
  // https://pub.dev/packages/csv
  final sampleString = await sample
      .transform(utf8.decoder)
      .transform(CsvToListConverter())
      .toList();

  final sampleCopyString = await sampleCopy
      .transform(utf8.decoder)
      .transform(CsvToListConverter())
      .toList();

  // file copy 메서드
  void copyFile(String sourcePath, String targetPath) {
    File(sourcePath).copySync(targetPath);
  }

  test('csv file copy test', () {
    copyFile('/Users/yong/Desktop/learn_dart_together/lib/0321/sample.csv',
        '/Users/yong/Desktop/learn_dart_together/lib/0321/sample_copy.csv');

    expect(eq(sampleString, sampleCopyString), true);
  });
}
