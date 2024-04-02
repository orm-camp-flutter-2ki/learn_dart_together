import 'package:dart_cli_practice/240402/model/book.dart';
import 'package:dart_cli_practice/240402/model/loan_record.dart';
import 'package:dart_cli_practice/240402/model/member.dart';

final brithString = '1997/12/01';

final mockMemberList = [
  Member(
    id: '1',
    name: '홍길동',
    signUpDate: '2024/04/02',
    address: '서울시',
    phone: '010-1234-5678',
    birthDate: brithString,
    age: DateTime.now().year - int.parse(brithString.split('/').first),
  ),
];
final mockMember = Member(
  id: '1',
  name: '홍길동',
  signUpDate: '2024/04/02',
  address: '서울시',
  phone: '010-1234-5678',
  birthDate: brithString,
  age: DateTime.now().year - int.parse(brithString.split('/').first),
);

final mockBookList = [
  Book(
    id: '1',
    name: '전자사전',
    isbn: '151195264-4',
    publicationDate: '2024/04/02',
  ),
];
final mockBook = Book(
  id: '1',
  name: '전자사전',
  isbn: '151195264-4',
  publicationDate: '2024/04/02',
);

final mockLoanRecordList = [
  LoanRecord(
    id: '1',
    userId: '1',
    bookId: '1',
    loanDate: '2024/04/02',
    extendedReturnDate: '2024/04/02',
    returnDate: '2024/04/16',
    isExtended: false,
    isReturned: false,
  ),
];
final mockLoanRecord = LoanRecord(
  id: '1',
  userId: '1',
  bookId: '1',
  loanDate: '2024/04/02',
  extendedReturnDate: '2024/04/02',
  returnDate: '2024/04/16',
  isExtended: false,
  isReturned: false,
);
