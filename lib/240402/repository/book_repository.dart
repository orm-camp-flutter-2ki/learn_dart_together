import 'package:learn_dart_together/240402/model/book.dart';
import 'package:learn_dart_together/240402/model/check_out_list.dart';
import 'package:learn_dart_together/240402/model/user.dart';

abstract interface class BookRepository {
  Book addBook();
  User addUser();
  List<CheckOutList> selectCheckOutList();
  // 반납 기간이 임박한 순서대로 정렬
  // 정렬 기준 교체

  List<Book> checkOutBook();
  // 대출이력 저장
  // 기본대출기간 2주
  // 연장하면 1주일 연장

  List<Book> returnBook();
}
