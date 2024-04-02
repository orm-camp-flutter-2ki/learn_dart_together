import 'package:dart_cli_practice/240402/model/loan_record.dart';

abstract interface class LoanRecordService {
  Future<void> recordLoan(LoanRecord loanRecord);

  Future<void> recordReturn(LoanRecord loanRecord);

  Future<void> recordExtend(LoanRecord loanRecord);

  Future<LoanRecord?> getLoanRecord(String bookId);

  Future<bool> getAvailableStatus(String bookId);

  Future<List<LoanRecord>> getLoanRecords();

  Future<List<LoanRecord>> getLoanRecordsByMemberId(String userId);
}
