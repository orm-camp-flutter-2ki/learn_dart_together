import 'package:intl/intl.dart';

class Book {
  String title;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

  // publishDate를 '년월일'로 변환하는 메서드
  String editDate(DateTime dateTime) {
    return '${publishDate.year}-${publishDate.month}-${publishDate.day}';
  }

  // 연습문제 3)
  Book copyWith({
    String? title,
    DateTime? publishDate,
    String? comment,
  }) {
    return Book(
      title: title ?? this.title,
      publishDate: publishDate ?? this.publishDate,
      comment: comment ?? this.comment,
    );
  }

  //
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          title == other.title &&
          editDate(publishDate) == other.editDate(publishDate) &&
          comment == other.comment;

  @override
  int get hashCode => title.hashCode ^ editDate(publishDate).hashCode;

  @override
  String toString() {
    return '책 제목 : $title, 출간일 : ${editDate(publishDate)}, 코멘트 : $comment';
  }
}

void main() {
  Book book1 = Book(title: '쇼펜하우어', comment: '좋아요', publishDate: DateTime(24-12-12));
  Book book2 = Book(title: '불변의 법칙', comment: '최고', publishDate: DateTime(23-04-05));
  Book book3 = Book(title: '데일 카네기', comment: '추천', publishDate: DateTime(22-03-02));

  // 연습문제 1)
  print(book1 == book2); // 제목이 달라서 false 출력

  // 연습문제 2)
  List<DateTime> lists = [];
  lists.add(book1.publishDate);
  lists.add(book2.publishDate);
  lists.add(book3.publishDate);

  lists.sort((a, b) => -a.compareTo(b)); // 출간일 기준 내림차순

  print(lists);
}
