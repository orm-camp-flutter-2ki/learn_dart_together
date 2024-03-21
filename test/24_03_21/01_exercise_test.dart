import 'package:test/test.dart';
import 'dart:io';

void main() {
  // given, when , then
  group('csv 쓰기읽기 test ', () {
    setUp(() async {
      final sample = File('lib/정다희/24_03_21/sample.csv');
      final contents = [
        ['1', '홍길동', '30'],
        ['2', '한석봉', '20']
      ];
      for (final row in contents) {
        await sample.writeAsString(row.join(',') + '\n',
            mode: FileMode.append, flush: true);
      }
    });
    tearDown(() async {
      // await File('lib/정다희/24_03_21/sample.csv').delete();
      // await File('lib/정다희/24_03_21/sample_copy.csv').delete();
    });

    test('김석봉을 찾음', () async {
      final data = await File('lib/정다희/24_03_21/sample.csv').readAsLines();
      List<List<String>> csvData = [];
      bool isMrHan = false;

      for (final row in data) {
        if (row.contains('한석봉')) {
          String replacedRow = row.replaceAll('한석봉', '김석봉');
          csvData.add(replacedRow.split(','));
          //한석봉씨를 찾았으므로
          isMrHan = true;
        } else {
          csvData.add(row.split(','));
        }
      }

      bool isMrKim = false;
      if (isMrHan) {
        final sampleCopy = File('lib/정다희/24_03_21/sample_copy.csv');
        for (final newRow in csvData) {
          await sampleCopy.writeAsString(newRow.join(',') + '\n',
              mode: FileMode.append, flush: true);
          if (newRow.contains('김석봉')) {
            isMrKim = true;
          }
        }
      }
      // 예상 csv 값과 일치하는지 여부 test 추가

      expect(isMrHan, true);
      expect(isMrKim, true);
    });
  });
}
