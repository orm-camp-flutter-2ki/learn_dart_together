import 'dart:io';

import 'package:collection/collection.dart';
import 'package:intl/intl.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_02/model/book.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_02/model/loanRecord.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_02/model/user.dart';
import 'package:learn_dart_together/정다희/24_04_02/repository/RentRepository.dart';

void main() {
// 책의 정보를 입력한다. 회원 정보를 입력한다.
// 회원이 책을 빌려가면 대출이력이 저장된다. 기본 대출기간은 2주일이다.
// 대출은 한번 연장 가능하고 1주일 연장된다.
// 대출 목록을 표시할 수 있고, 반납 기간이 임박한 순서대로 정렬되어 표시되어야 한다.
  DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('yyyy/MM/dd');
  Book harryPotter = Book(
      name: '비밀의방',
      author: 'joan rolling',
      releaseDate: DateTime(2021, 01, 01),
      isRented: false);
  User naPd = User(
      name: '나영석',
      id: 1,
      phoneNum: "010-1234-1234",
      birthDate: DateTime(1970, 07, 01),
      joinDate: DateTime(1970, 07, 01),
      address: "경기도 고양시 일산구",
      rentList: []);

  //나영석이 해리포터 책을 빌림
  final repo = RentRepositoryImpl();
  harryPotter = repo.addRentRecord(
      harryPotter, naPd, DateTime(now.year, now.month, now.day));
  List<Book> updatedRentList = List<Book>.from(naPd.rentList)..add(harryPotter);
  naPd = naPd.copyWith(rentList: updatedRentList);
  print(harryPotter.isRented);
  print(naPd.rentList);

  //대출 record 만들기
  LoanRecord record = LoanRecord(
    bookName: harryPotter.name,
    userName: naPd.name,
    rentDate: DateTime(now.year, now.month, now.day),
    rentBackDate:
        DateTime(now.year, now.month, now.day).add(Duration(days: 14)),
    extendReturnDate: 0,
  );
  //날짜변경
  print(DateFormat('yyyy/MM/dd').format(record.rentBackDate));
  //대출연장
  num lastExtendCount = record.extendReturnDate;
  DateTime lastRentBackDate = record.rentBackDate;
  record = record.copyWith(
      extendReturnDate: lastExtendCount++,
      rentBackDate: lastRentBackDate.add(Duration(days: 7)));
  print(DateFormat('yyyy/MM/dd').format(record.rentBackDate));

  Book harryPotter2 = Book(
      name: '아즈카반의 죄수',
      author: 'joan rolling',
      releaseDate: DateTime(2021, 04, 02),
      isRented: false);

  harryPotter2 = repo.addRentRecord(
      harryPotter2, naPd, DateTime(now.year, now.month, now.day));
  updatedRentList = List<Book>.from(naPd.rentList)..add(harryPotter2);
  naPd = naPd.copyWith(rentList: updatedRentList);

  //대출 record 만들기
  LoanRecord record2 = LoanRecord(
    bookName: harryPotter2.name,
    userName: naPd.name,
    rentDate: DateTime(now.year, now.month, now.day),
    rentBackDate:
        DateTime(now.year, now.month, now.day).add(Duration(days: 14)),
    extendReturnDate: 0,
  );

  // 대출목록 반납기간 임박순으로 정렬 표시
  final rentListForNa = List<Book>.from(naPd.rentList);
  print('대출기간 반납기간 임박순: $rentListForNa');

  Book harryPotter3 = Book(
      name: '불의잔',
      author: 'joan rolling',
      releaseDate: DateTime(1992, 04, 02),
      isRented: false);

  // 모든 책을 모아둔다.
  List<Book> allBooks = [];
  allBooks.add(harryPotter);
  allBooks.add(harryPotter2);
  allBooks.add(harryPotter3);

  // 대출가능한 책반 보여준다.
  final rentalbe =
      allBooks.where((element) => element.isRented == false).toList();

  // 최근 출간된 순서대로
  List<Book> releaseOrdered =
      allBooks.sorted((a, b) => b.releaseDate.compareTo(a.releaseDate));
  print(releaseOrdered);

  //나이계산
  DateTime currentDate = DateTime.now();
  DateTime naBirthDate = naPd.birthDate;
  int age = currentDate.year - naBirthDate.year;
  if (currentDate.month < naBirthDate.month ||
      (currentDate.month == naBirthDate.month &&
          currentDate.day < naBirthDate.day)) {
    age--;
  }
  print(age);

  //앱을 재시작해도 정보가 유지
  //file 에 쓰는식으로..

  //반납
  print(naPd.rentList);
  List<Book> lateBookList = List<Book>.from(naPd.rentList);
  lateBookList.remove(harryPotter2);
  naPd = naPd.copyWith(rentList: lateBookList);
  print(naPd.rentList);
}
