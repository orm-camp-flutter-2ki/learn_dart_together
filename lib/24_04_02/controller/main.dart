import 'dart:io';
import 'package:learn_dart_together/24_04_02/dto/user_dto.dart';
import 'package:learn_dart_together/24_04_02/model/book.dart';
import 'package:learn_dart_together/24_04_02/model/user.dart';
import 'package:learn_dart_together/24_04_02/service/book_service.dart';
import 'package:learn_dart_together/24_04_02/service/book_service_impl.dart';
import 'package:learn_dart_together/24_04_02/service/user_service.dart';
import 'package:learn_dart_together/24_04_02/service/user_service_impl.dart';

final UserService _userService = UserServiceImpl();
final BookService _bookService = BookServiceImpl();

void main() async {
  while (true) {
    stdout.write('0. 종료   1. 회원 서비스   2. 도서 서비스\n');
    stdout.write('Enter something: ');
    String? input = stdin.readLineSync();
    switch (input) {
      case '0':
        return;
      case '1':
        doUserService();
        break;
      case '2':
        doBookService();
    }
  }
}

void doUserService() async {
  while (true) {
    stdout.write('0.뒤로   1.회원조회   2.회원등록   3.회원수정   4.회원삭제   5.삭제취소\n');
    stdout.write('Enter something: ');
    String? input = stdin.readLineSync();

    switch (input) {
      case '0':
        return;
      case '1':
        List<User> searchUsers = await _userService.searchUsers();
        for (User user in searchUsers) {
          print(user.toString());
        }
      case '2':
        stdout.write('이름: ');
        String? input1 = stdin.readLineSync();
        stdout.write('주소: ');
        String? input2 = stdin.readLineSync();
        stdout.write('전화번호: ');
        String? input3 = stdin.readLineSync();
        stdout.write('생년월일: ');
        String? input4 = stdin.readLineSync();
        UserDto newUser = UserDto(
            name: input1,
            address: input2,
            phone: input3,
            signUpDate: getDateTime(),
            birth: input4);
        _userService.addUser(newUser);
      case '3':
        print('수정할 회원의 id를 입력해 주세요.');
        String? id = stdin.readLineSync();
        if (id == null) {
          print('다시 입력해 주세요.');
          continue;
        }
        await _userService.editUser(int.parse(id));
      case '4':
        print('삭제할 회원의 id를 입력해 주세요.');
        String? id = stdin.readLineSync();
        if (id == null) {
          print('다시 입력해 주세요.');
          continue;
        }
        _userService.deleteUser(int.parse(id));
      case '5':
        print('삭제를 취소할 회원의 id를 입력해 주세요.');
        String? id = stdin.readLineSync();
        if (id == null) {
          print('다시 입력해 주세요.');
          continue;
        }
        _userService.undo(int.parse(id));
      case '-1':
        return;
    }
  }
}

void doBookService() async {
  while (true) {
    stdout.write('0.뒤로   1.도서 대출   2. 도서 반납   3. 도서 정보,   4. 대출 가능한 도서 보기\n');
    stdout.write('Enter something: ');
    String? input = stdin.readLineSync();

    switch (input) {
      case '0':
        return;
      case '1':
        String? userId = stdin.readLineSync();
        String? bookId = stdin.readLineSync();
        _bookService.rentBook(
            int.parse(userId ?? '1'), int.parse(bookId ?? '1'));
        break;
      case '2':
        break;
      case '3':
        List<Book> searchBooks = await _bookService.searchBooks();
        for (Book book in searchBooks) {
          print(book.toString());
        }
    }
  }
}

String getDateTime() {
  DateTime dateTime = DateTime.now();
  int year = dateTime.year;
  int month = dateTime.month;
  int day = dateTime.day;
  return '$year/${_addLeadingZero(month)}/${_addLeadingZero(day)}';
}

String _addLeadingZero(int number) {
  return number < 10 ? '0$number' : '$number';
}
