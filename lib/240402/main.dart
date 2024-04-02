import 'package:learn_dart_together/240402/model/member.dart';
import 'package:learn_dart_together/240402/repository/backup_manager.dart';
import 'package:learn_dart_together/240402/repository/library.dart';
import 'package:learn_dart_together/240402/repository/member_manager.dart';

import 'model/book.dart';

void main() {
  Library library = Library();

  library.addBook(Book('프로그래밍 언어론', 'John Smith', DateTime(2010, 5, 15)));
  library.addBook(Book('알고리즘 분석', 'Jane Doe', DateTime(2015, 10, 20)));
  library.addBook(Book('플러터 생존코딩', '오준석', DateTime(2021, 10, 20)));

  library.addMember(
      Member('홍길동', '서울시 강남구', '010-1234-5678', DateTime(1990, 5, 15)));
  library.addMember(
      Member('김철수', '서울시 종로구', '010-9876-5432', DateTime(1985, 10, 20)));

  library.borrowBook(library.books[0], library.members[0]);
  library.borrowBook(library.books[1], library.members[1]);

  print('\n--- 대출 가능한 책 목록 ---');
  library.displayAvailableBooks();

  print('\n--- 최근 출간된 책 목록 ---');
  library.displayRecentBooks();

  print('\n--- 회원 정보 ---');
  library.displayMembersInfo();

  // 백업 생성
  BackupManager().backup(library);

  // 회원 삭제 및 복구
  MemberManager memberManager = MemberManager();
  Member memberToDelete = library.members[0];
  memberManager.deleteMember(library, memberToDelete);
  print('\n--- 회원 삭제 후 정보 ---');
  library.displayMembersInfo();

  // 회원 삭제 실수로 복구
  print('\n--- 회원 삭제 복구 ---');
  memberManager.undoDelete(library);
  library.displayMembersInfo();
}
