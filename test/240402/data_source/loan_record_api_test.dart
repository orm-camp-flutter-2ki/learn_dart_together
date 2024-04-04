import 'package:dart_cli_practice/240402/data_source/loan_record_api.dart';
import 'package:dart_cli_practice/240402/data_source/loan_record_api_impl.dart';
import 'package:dart_cli_practice/240402/model/loan_record.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../mock/mock_file_util.dart';

void main() {
  final mockFileUtil = MockFileUtil('test/240402/resource/loan_record.csv');

  LoanRecordApi api = LoanRecordApiImpl(mockFileUtil);

  setUp(() {
    reset(mockFileUtil);
  });

  group('LoanRecordApi 클래스의', () {
    group('getLoanRecords() 메소드는', () {
      test('readAsLineString() 메소드로 파일을 읽어 List<LoanRecord> 를 반환한다.', () async {
        // given
        final expected = [
          LoanRecord(
            id: '1',
            userId: '1',
            bookId: '1',
            loanDate: '2024/04/02',
            extendedReturnDate: '2024/04/02',
            returnDate: '2024/04/16',
            isExtended: false,
            isReturned: false,
          )
        ];

        // when
        when(mockFileUtil.readAsLineString())
            .thenAnswer((_) async => mockLoanRecordStringList);
        final loanRecordList = await api.getLoanRecords();

        // then
        expect(loanRecordList, expected);
      });
    });

    group('postLoanRecord() 메소드는', () {
      test('새로 생성된 LoanRecord를 기존 데이터 파일에 추가한다.', () async {
        // given
        final expected = LoanRecord(
          id: '1',
          userId: '1',
          bookId: '1',
          loanDate: '2024/04/02',
          extendedReturnDate: '2024/04/02',
          returnDate: '2024/04/16',
          isExtended: false,
          isReturned: false,
        );

        // when
        // when(mockFileUtil.write('')).thenAnswer((_) async {});
        when(mockFileUtil.readAsLineString())
            .thenAnswer((_) async => mockLoanRecordStringList);
        when(mockFileUtil.write(''));
        await api.postLoanRecord(expected);

        // then
        verify(mockFileUtil.write('')).called(1);
      });
    });

    group('putLoanRecord() 메소드는', () {
      test('기존 LoanRecord 를 새로 바뀐 LoanRecord 로 파일을 업데이트 한다.', () async {
        // given
        final expected = LoanRecord(
          id: '1',
          userId: '1',
          bookId: '1',
          loanDate: '2024/04/02',
          extendedReturnDate: '2024/04/02',
          returnDate: '2024/04/16',
          isExtended: false,
          isReturned: false,
        );

        // when
        // when(mockFileUtil.write('')).thenAnswer((_) async {});
        when(mockFileUtil.readAsLineString())
            .thenAnswer((_) async => mockLoanRecordStringList);
        when(mockFileUtil.write(''));
        await api.putLoanRecord(expected);

        // then
        verify(mockFileUtil.write('')).called(1);
      });
    });
  });
}
