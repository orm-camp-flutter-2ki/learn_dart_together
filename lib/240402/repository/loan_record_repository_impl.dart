import 'package:dart_cli_practice/240402/data_source/loan_record_api.dart';
import 'package:dart_cli_practice/240402/model/loan_record.dart';
import 'package:dart_cli_practice/240402/repository/loan_record_repository.dart';

class LoanRecordRepositoryImpl implements LoanRecordRepository {
  final LoanRecordApi _loanRecordApi;

  LoanRecordRepositoryImpl(this._loanRecordApi);

  @override
  Future<List<LoanRecord>> findAll() async {
    return await _loanRecordApi.getLoanRecords();
  }

  @override
  Future<LoanRecord?> findLastOneByBookId(String bookId) async {
    final loanRecordList = await _loanRecordApi.getLoanRecords();

    loanRecordList
        .where((e) => e.bookId == bookId)
        .toList()
        .sort((a, b) => b.loanDate.compareTo(a.loanDate));

    if (loanRecordList.isEmpty) {
      return null;
    }

    return loanRecordList.first;
  }

  @override
  Future<void> save(LoanRecord loanRecord) async {
    await _loanRecordApi.postLoanRecord(loanRecord);
  }

  @override
  Future<void> update(LoanRecord loanRecord) async {
    await _loanRecordApi.putLoanRecord(loanRecord);
  }

  @override
  Future<List<LoanRecord>> findAllByUserId(String userId) async {
    final loanRecordList = await _loanRecordApi.getLoanRecords();

    return loanRecordList.where((e) => e.userId == userId).toList();
  }
}
