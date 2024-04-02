import 'dart:io';

import 'package:learn_dart_together/240402/repository/book_repository.dart';
import 'package:learn_dart_together/240402/repository/book_repository_impl.dart';
import 'package:learn_dart_together/240402/view.dart';

import 'model/book.dart';

class InsertBookView {
  String? _input;
  String? _title;
  DateTime? _publishDate;

  void getView(BookRepository bookRepository) {
    print('책의 제목을 입력하세요.');
    _input = stdin.readLineSync();
    if (_input == null || _input == '') {
      print('책의 제목을 입력하지 않으셨습니다.');
      return;
    }
    _title = _input!;
/*
    print('책의 출간 날짜를 입력하세요. (ex 2024/04/02)');
    _input = stdin.readLineSync();
    if (_input == null || _input == '') {
      print('책의 출간 날짜를 입력하지 않으셨습니다.');
      return;
    }

 */
    print('출간일을 입력하세요. 예시)20010101');
    String? birth = stdin.readLineSync();
    while (birth == null ||
        birth == '' ||
        birth.length != 8 ||
        !validateNumber(birth)) {
      print('다시 입력 하세요 생일을 잘못 입력하셨습니다.');
      birth = stdin.readLineSync();
    }
    int idnum = bookRepository.getIdInt();
    String year = birth.substring(0, 4);
    String month = birth.substring(4, 6);
    String day = birth.substring(6, 8);
    /*
    if (_isFormatDate(_input!)) {
      print('책의 출간 날짜를 잘못 입력하셨습니다.');
      return;
    }
    _publishDate = DateTime.tryParse(_input!);

     */
    Book book = Book(
        id: idnum,
        title: _title!,
        publishDate: DateTime(
            int.parse(year), int.parse(month), int.parse(day), 0, 0, 0),
        isAbleLoan: true,
        loanDate: DateTime(0, 0, 0),
        returnDate: DateTime(0, 0, 0));

    final result = bookRepository.createBook(book);
    if (!result) {
      print('책 등록 중에 문제가 발생했습니다.');
      return;
    }
  }

  bool _isFormatDate(String date) {
    if (date.length != 10) return false;
    if (date.split('/')[0].length != 4 ||
        date.split('/')[1].length != 2 ||
        date.split('/')[2].length != 2) return false;
    return true;
  }

  bool validateNumber(String value) {
    // String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(r'^[+-]?([0-9]+([.][0-9]*)?|[.][0-9]+)$');
    if (value.length == 0) {
      return false;
    } else if (!regExp.hasMatch(value)) {
      return false;
    }
    return true;
  }
}
