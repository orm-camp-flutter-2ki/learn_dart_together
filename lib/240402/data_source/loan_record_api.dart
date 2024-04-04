import 'package:dart_cli_practice/240402/model/loan_record.dart';

abstract interface class LoanRecordApi {
  Future<List<LoanRecord>> getLoanRecords();

  Future<void> postLoanRecord(LoanRecord loanRecord);

  Future<void> putLoanRecord(LoanRecord loanRecord);
}
