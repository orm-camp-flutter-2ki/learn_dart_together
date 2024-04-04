import 'package:dart_cli_practice/240402/common/file_util.dart';
import 'package:dart_cli_practice/240402/data_source/loan_record_api.dart';
import 'package:dart_cli_practice/240402/model/loan_record.dart';

final bookCsvColumn =
    'id,userId,bookId,loanDate,extendedReturnDate,returnDate,isExtended,isReturned\n';

class LoanRecordApiImpl implements LoanRecordApi {
  final FileUtil _fileUtil;

  LoanRecordApiImpl(this._fileUtil);

  @override
  Future<List<LoanRecord>> getLoanRecords() async {
    final loanRecordStringList = await _fileUtil.readAsLineString();

    loanRecordStringList.removeAt(0);

    return loanRecordStringList.map(_stringToLoanRecord).toList();
  }

  @override
  Future<void> postLoanRecord(LoanRecord loanRecord) async {
    final loanRecordList = await getLoanRecords();
    loanRecordList.add(loanRecord);

    _fileUtil.write(loanRecordListToBufferedString(loanRecordList).toString());
  }

  @override
  Future<void> putLoanRecord(LoanRecord loanRecord) async {
    final loanRecordList = await getLoanRecords();

    loanRecordList.map((e) => oldLoanRecordToNewRecord(e, loanRecord));

    _fileUtil.write(loanRecordListToBufferedString(loanRecordList).toString());
  }

  StringBuffer loanRecordListToBufferedString(List<LoanRecord> loanRecordList) {
    StringBuffer buffer = StringBuffer()..write(bookCsvColumn);

    for (final loanRecord in loanRecordList) {
      buffer.write(_loanRecordToString(loanRecord));
    }

    return buffer;
  }

  LoanRecord oldLoanRecordToNewRecord(
      LoanRecord oldLoanRecord, LoanRecord newLoanRecord) {
    return (oldLoanRecord.id == newLoanRecord.id)
        ? newLoanRecord
        : oldLoanRecord;
  }

  LoanRecord _stringToLoanRecord(String loanRecordString) {
    final [
      id,
      userId,
      bookId,
      loanDate,
      extendedReturnDate,
      returnDate,
      isExtended,
      isReturned
    ] = loanRecordString.split(',');
    return LoanRecord(
      id: id,
      userId: userId,
      bookId: bookId,
      loanDate: loanDate,
      extendedReturnDate: extendedReturnDate,
      returnDate: returnDate,
      isExtended: bool.parse(isExtended),
      isReturned: bool.parse(isReturned),
    );
  }

  String _loanRecordToString(LoanRecord loanRecord) {
    final loanRecordString = '${loanRecord.id},'
        '${loanRecord.userId},'
        '${loanRecord.bookId},'
        '${loanRecord.loanDate},'
        '${loanRecord.extendedReturnDate},'
        '${loanRecord.returnDate},'
        '${loanRecord.isExtended},'
        '${loanRecord.isReturned}\n';

    return loanRecordString;
  }
}
