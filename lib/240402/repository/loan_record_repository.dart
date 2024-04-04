import 'package:dart_cli_practice/240402/model/loan_record.dart';

abstract interface class LoanRecordRepository {
  Future<void> save(LoanRecord loanRecord);

  Future<void> update(LoanRecord loanRecord);

  Future<LoanRecord?> findLastOneByBookId(String bookId);

  Future<List<LoanRecord>> findAll();

  Future<List<LoanRecord>> findAllByUserId(String userId);
}
