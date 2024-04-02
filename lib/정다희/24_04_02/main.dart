import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_02/model/book.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_02/model/loanRecord.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_02/model/user.dart';

void main() {
// 책의 정보를 입력한다. 회원 정보를 입력한다.
// 회원이 책을 빌려가면 대출이력이 저장된다. 기본 대출기간은 2주일이다.
// 대출은 한번 연장 가능하고 1주일 연장된다.
// 대출 목록을 표시할 수 있고, 반납 기간이 임박한 순서대로 정렬되어 표시되어야 한다.

  final harryPotter = Book(
      name: '비밀의방',
      author: 'joan rolling',
      releaseDate: DateTime(2024 - 04 - 02),
      isRented: false);
  final naPd = User(
      name: '나영석',
      id: 1,
      phoneNum: "010-1234-1234",
      birthDate: DateTime(1970 - 07 - 01),
      joinDate: DateTime(1970 - 07 - 01),
      address: "경기도 고양시 일산구",
      rentList: []);

  //나영석이 해리포터 책을 빌림
  naPd.addRentList(harryPotter);
  final recordForHarryPotter = LoanRecord(
      bookName: '비밀의방',
      userName: '나영석',
      rentDate: DateTime(2024 - 04 - 02),
      rentBackDate: DateTime(2024 - 04 - 02).add(Duration(days: 14)),
      extendReturnDate: 0);

  recordForHarryPotter.checkRentBackDate();

  print("===도서 대출 프로그램===");
}
