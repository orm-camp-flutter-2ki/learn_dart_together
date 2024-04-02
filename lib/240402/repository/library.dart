import 'package:learn_dart_together/240402/model/member.dart';
import 'package:learn_dart_together/240402/repository/library_memento.dart';

import '../model/book.dart';

class Library {
  List<Book> books = [];
  List<Member> members = [];
  final String backupFileName = 'library_backup.csv';
  late List<LibraryMemento> mementos; // 메멘토 패턴 적용을 위한 멤버 변수

  Library() {
    mementos = [];
  }

  void addBook(Book book) {
    books.add(book);
  }

  void addMember(Member member) {
    members.add(member);
  }

  void borrowBook(Book book, Member member) {
    if (book.borrow()) {
      print('${member.name}님이 ${book.title}을 대출하셨습니다.');
    }
  }

  void renewBook(Book book) {
    book.renew();
    print('${book.title}의 대출 기간이 연장되었습니다.');
  }

  void returnBook(Book book) {
    book.returnBook();
    print('${book.title}을 반납하셨습니다.');
  }

  void displayAvailableBooks() {
    print('대출 가능한 책 목록:');
    for (var book in books) {
      if (book.isAvailable()) {
        print(
            '${book.title} (${book.publishDate?.year}/${book.publishDate?.month}/${book.publishDate?.day})');
      }
    }
  }

  void displayRecentBooks() {
    books.sort((a, b) => b.publishDate!.compareTo(a.publishDate!));
    print('최근 출간된 책 목록:');
    for (var book in books) {
      print(
          '${book.title} (${book.publishDate?.year}/${book.publishDate?.month}/${book.publishDate?.day})');
    }
  }

  void displayMembersInfo() {
    print('회원 정보:');
    for (var member in members) {
      print(
          '이름: ${member.name}, 나이: ${member.getAge()}, 주소: ${member.address}, 연락처: ${member.phoneNumber}');
    }
  }
}
