import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/240402/model/member.dart';
import 'package:learn_dart_together/240402/repository/insert_member.dart';
import 'package:learn_dart_together/240402/repository/library.dart';
import 'package:learn_dart_together/240402/repository/member_manager.dart';

import 'model/book.dart';

void main() async {
  Library library = Library();
  library.addBook(Book('프로그래밍 언어론', 'John Smith', DateTime(2010, 5, 15)));
  library.addBook(Book('알고리즘 분석', 'Jane Doe', DateTime(2015, 10, 20)));
  library.addBook(Book('플러터 생존코딩', '오준석', DateTime(2021, 10, 20)));

  print(library.members);
  // library.borrowBook(library.books[0], library.members[0]);
  // library.borrowBook(library.books[1], library.members[1]);

  print('=== 회원 관리 시스템 ===');

  while (true) {
    print('0. 뒤로 1. 회원 조회 2. 회원 등록 3. 회원 삭제 4. 삭제 취소');
    stdout.write('메뉴를 선택하세요: ');
    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        print('회원 조회 기능을 선택했습니다.');
        // 회원 조회 함수 호출
        library.displayMembersInfo();
        break;
      case '2':
        print('회원 등록 기능을 선택했습니다.');
        InsertMember insertMember = InsertMember();
        Member newMember = insertMember.insertMember();
        library.addMember(newMember);
        // 회원 등록 함수 호출
        break;
      case '3':
        print('회원 삭제 기능을 선택했습니다. 삭제할 멤버의 이름을 입력하세요.');

        String? deletName = stdin.readLineSync(encoding: utf8);
        MemberManager memberManager = MemberManager();

        // 입력된 이름과 동일한 이름을 가진 회원을 찾고 삭제합니다.
        bool foundMember = false; // 회원을 찾았는지 여부를 나타내는 변수 추가

        for (Member member in library.members) {
          if (member.name == deletName) {
            memberManager.deleteMember(library, member); // 회원 삭제
            print("$deletName 회원을 삭제했습니다.");
            foundMember = true; // 회원을 찾았음을 표시
            break; // 회원을 찾았으므로 반복문 종료
          }
        }

        if (!foundMember) {
          print("존재하지 않는 회원입니다.");
        }
        // 회원 삭제 함수 호출
        break;
      case '4':
        print('삭제 취소 기능을 선택했습니다.');
        // 삭제 취소 함수 호출
        break;
      case '0':
        print('뒤로 가기를 선택했습니다.');
        // 뒤로 가기 기능 수행
        return;
      default:
        print('올바른 메뉴를 선택해주세요.');
    }
  }
}
