import 'package:dart_cli_practice/240327/common/extension.dart';
import 'package:dart_cli_practice/240402/model/book.dart';
import 'package:dart_cli_practice/240402/model/loan_record.dart';
import 'package:dart_cli_practice/240402/service/book_service.dart';
import 'package:dart_cli_practice/240402/service/loan_record_service.dart';
import 'package:dart_cli_practice/240402/service/loan_service.dart';
import 'package:dart_cli_practice/240402/service/member_service.dart';
import 'package:uuid/v4.dart';

String addExtendDate(String loanDate) {
  final [year, month, day] = loanDate.split('/');
  return '$year/$month/${int.parse(day) + 14}';
}

class LoanServiceImpl implements LoanService {
  final MemberService _memberService;
  final BookService _bookService;
  final LoanRecordService _loanRecordService;

  LoanServiceImpl(
      this._memberService, this._bookService, this._loanRecordService);

  @override
  Future<void> extendLoan(String memberId, String bookId) async {
    final loanRecords =
        await _loanRecordService.getLoanRecordsByMemberId(memberId);

    if (!loanRecords.any((e) =>
        e.bookId == bookId && e.isExtended == false && e.isReturned == false)) {
      throw Exception('잘못된 요청입니다. 연장 할 수 없습니다.');
    }

    final loanRecord = loanRecords
        .where((e) =>
            e.bookId == bookId &&
            e.isExtended == false &&
            e.isReturned == false)
        .first;

    final extendedLoanRecord = loanRecord.copyWith(
        isExtended: true,
        extendedReturnDate: addExtendDate(loanRecord.loanDate));

    await _loanRecordService.recordExtend(extendedLoanRecord);
  }

  @override
  Future<void> loanBook(String memberId, String bookId) async {
    final book = await _bookService.getBook(bookId);

    if (!book.isNotNull) {
      throw Exception('잘못된 요청입니다. 존재하지 않는 책입니다.');
    }

    if (!await _loanRecordService.getAvailableStatus(bookId)) {
      throw Exception('대출이 불가능한 책입니다.');
    }

    final nowDate =
        '${DateTime.now().year}/${DateTime.now().month}/${DateTime.now().day}';

    await _loanRecordService.recordLoan(LoanRecord(
      id: UuidV4().toString(),
      userId: memberId,
      bookId: bookId,
      loanDate: nowDate,
      extendedReturnDate: nowDate,
      returnDate: nowDate,
      isExtended: false,
      isReturned: false,
    ));
  }

  @override
  Future<void> returnBook(String memberId, String bookId) async {
    final loanRecord = await _loanRecordService.getLoanRecord(bookId);

    if (!loanRecord.isNotNull) {
      throw Exception('잘못된 요청입니다. 존재하지 않는 대출 기록입니다.');
    }

    if (!(loanRecord?.userId == memberId && loanRecord?.isReturned == false)) {
      throw Exception('연장이 불가능한 책입니다.');
    }

    final nowDate =
        '${DateTime.now().year}/${DateTime.now().month}/${DateTime.now().day}';

    await _loanRecordService.recordReturn(
        loanRecord!.copyWith(isReturned: true, returnDate: nowDate));
  }

  @override
  Future<List<Book>> searchAvailableBooks() async {
    final bookList = await _bookService.getBooks();

    final List<Book> result = [];

    for (final book in bookList) {
      if (await _loanRecordService.getAvailableStatus(book.id)) {
        result.add(book);
      }
    }

    return result;
  }
}
