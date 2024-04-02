import 'package:learn_dart_together/240402/model/book.dart';
import 'package:learn_dart_together/240402/model/check_out_list.dart';
import 'package:learn_dart_together/240402/model/user.dart';

abstract interface class BookRepository {
  // 앱을 재시작할 때 유지되어야 하는 정보는?
  Book addBook(int id, String title);
  // 책의 정보를 입력한다.

  User addUser(Map<String, dynamic> user);
  // 회원 정보를 입력한다.

  List<CheckOutList> selectCheckOutList(ckeckOutList, sortedBy);
  // 대출 목록을 표시
  // 반납 기간이 임박한 순서대로 정렬
  // 정렬 기준 교체
  // 대출 가능한 책만 볼 수 있다.
  // 최근 출간된 순서대로 볼 수
  // 날짜를 표시할 때는 (2013/10/20)

  List<Book> checkOutBook(List<Book> books);
  // 회원이 책을 빌려가면 대출이력이 저장된다.
  // 대출이력 저장
  // 기본대출기간 2주
  // 연장하면 1주일 연장

  List<Book> extendDueReturn(List<Book> books);
  // 대출은 한번 연장 가능하고 1주일 연장된다.
  // dueReturn + 7

  List<Book> returnBook(List<Book> books);
  // 반납
  // 반납상태를 false로, dueReturn을 null로

  List<Book> automaticReturn(List<Book> books);
  // 기간 지나면 자동 반납 dueReturn == today -> 자동 반납
}
