import '../model/book.dart';

abstract interface class MemberRepository {
  // 책을 빌림.
  // 자신이 빌린 책의 정보와 반납기간 정보를 확인 할 수 있다.
  // 책을 반납하고 반납 정보를 확인할 수 있다.
  void addUser(); // 신규 가입

  void searchUser(); //가입자 정보 조회 및 확인

  void addRentList(Book newBook) {
    //멤버가 책을 빌릴 시, 리스트에 추가
  }

  void returnBook(Book book) {
    //멤버가 책을 반납 시, 리스트에서 제거
  }
}
