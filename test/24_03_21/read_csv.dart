import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_21/read_csv.dart';
import 'package:learn_dart_together/24_03_19/file.dart';
import 'package:test/test.dart';

void main() {
  group('CsvManager 클래스는', () {
    final csvManger = CsvManager();
    final testFile = 'sample.csv';

    setUp(() => copy('base_sample.csv', testFile));

    tearDown(() => delete(testFile));

    // Future<List<String>> readCsv(String title) async
    group('readeCsv()는', () {
      test('csv를 List<String>으로 읽어온다.', () async {
        // Given
        final expected = ['1,홍길동,30', '2,한석봉,20'];

        // When
        final result = await csvManger.readCsv(testFile);

        // Then
        expect(ListEquality().equals(result, expected), true);

      });
    });

    // void writeCsv(String title, List<String> text)
    group('writeCsv()는', () {
      test('List<String>를 csv파일로 생성한다.', () async {
        // Given
        final expectedText = ['1,홍길동,30', '2,전종현,20'];

        // When
        csvManger.writeCsv('sample.csv', expectedText);
        final result = await csvManger.readCsv(testFile);

        // Then
        expect(ListEquality().equals(result, expectedText), true);
      });
    });

    // void replaceValue(String originTitle, String copyTitle,String from, String to) async
    group('replaceValue()는', () {
      test('읽으려는 파일이 없는 경우, 예외를 던진다.', () async {
        // Given
        final notExistFile = '없는 파일명.csv';

        // When

        // Then
        expect(() => csvManger.replaceValueAndCopy(notExistFile, testFile, '한석봉', '김석봉'), throwsA(predicate((e) => e is Exception)));
      });

      test('파일을 읽고 값을 수정하여 복사본을 생성한다.', () async {
        // Given
        final copiedFile = 'sample_copy.csv';
        final from = '한석봉';
        final to = '김석봉';
        final expectedText = ['1,홍길동,30', '2,김석봉,20'];

        // When
        await csvManger.replaceValueAndCopy(testFile, copiedFile, from, to);
        final result = await csvManger.readCsv(copiedFile);

        // Then
        expect(ListEquality().equals(expectedText, result) , true);
        delete(copiedFile);
      });
    });
  });
}