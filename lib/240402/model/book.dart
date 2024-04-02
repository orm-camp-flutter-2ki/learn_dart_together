import 'package:learn_dart_together/240402/repository/borrowable.dart';

class Book implements Borrowable {
  String title;
  String author;
  DateTime? publishDate;
  bool borrowed = false;
  DateTime? borrowDate;
  DateTime? returnDate;
  int renewalCount = 0;

  Book(this.title, this.author, this.publishDate);

  @override
  bool borrow() {
    if (!borrowed) {
      borrowed = true;
      borrowDate = DateTime.now();
      returnDate = borrowDate!.add(Duration(days: 14));
      return true;
    } else {
      print('이 책은 이미 대출 중입니다.');
      return false;
    }
  }

  @override
  bool renew() {
    if (borrowed && renewalCount < 1 && DateTime.now().isBefore(returnDate!)) {
      returnDate = returnDate!.add(Duration(days: 7));
      renewalCount++;
      return true;
    } else {
      print('대출 연장이 불가능합니다.');
      return false;
    }
  }

  @override
  bool returnBook() {
    if (borrowed) {
      borrowed = false;
      borrowDate = null;
      returnDate = null;
      return true;
    } else {
      print('이 책은 대출 중이 아닙니다.');
      return false;
    }
  }

  @override
  bool isAvailable() {
    return !borrowed;
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'author': author,
      'publishDate': publishDate != null
          ? '${publishDate!.year}-${publishDate!.month}-${publishDate!.day}'
          : '',
      'borrowed': borrowed,
      'borrowDate': borrowDate != null
          ? '${borrowDate!.year}-${borrowDate!.month}-${borrowDate!.day}'
          : '',
      'returnDate': returnDate != null
          ? '${returnDate!.year}-${returnDate!.month}-${returnDate!.day}'
          : '',
      'renewalCount': renewalCount
    };
  }
}
