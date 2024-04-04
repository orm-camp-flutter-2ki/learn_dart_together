import 'package:dart_cli_practice/240402/model/loan_record.dart';
import 'package:dart_cli_practice/240402/repository/loan_record_repository.dart';
import 'package:dart_cli_practice/240402/service/loan_record_service.dart';

class LoanRecordServiceImpl implements LoanRecordService {
  final LoanRecordRepository _loanRecordRepository;

  LoanRecordServiceImpl(this._loanRecordRepository);

  @override
  Future<List<LoanRecord>> getLoanRecords() async {
    return _loanRecordRepository.findAll();
  }

  @override
  Future<LoanRecord?> getLoanRecord(String bookId) async {
    return await _loanRecordRepository.findLastOneByBookId(bookId);
  }

  @override
  Future<bool> getAvailableStatus(String bookId) async {
    final loanRecord = await _loanRecordRepository.findLastOneByBookId(bookId);

    if (loanRecord == null) {
      return true;
    } else if (loanRecord.isReturned) {
      return true;
    }

    return false;
  }

  @override
  Future<void> recordLoan(LoanRecord loanRecord) async {
    await _loanRecordRepository.save(loanRecord);
  }

  @override
  Future<void> recordReturn(LoanRecord loanRecord) async {
    await _loanRecordRepository.update(loanRecord);
  }

  @override
  Future<void> recordExtend(LoanRecord loanRecord) async {
    await _loanRecordRepository.update(loanRecord);
  }

  @override
  Future<List<LoanRecord>> getLoanRecordsByMemberId(String userId) {
    return _loanRecordRepository.findAllByUserId(userId);
  }
}
