class Book implements Comparable<Book> {
  String title;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime(2024, 1, 1);

  @override
  int compareTo(Book other) {
    //제목과 출판일이 같으면 같은 책으로 판단 연습문제 1 -1)
    if (title == other.title && _isSameDate(publishDate, other.publishDate)) {
      return 0;
    }
    //출판일을 기준으로 비교
    return publishDate.compareTo(other.publishDate);
  }

  //두 날짜가 같은지 확인하는 함수
  bool _isSameDate(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          other.title == title &&
          _isSameDate(other.publishDate, publishDate);

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;

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
}

// 연습문제 1- 1)
void main() {
  Book book1 = Book(
    title: 'Book 1',
    publishDate: DateTime(2024, 1, 1),
    comment: 'Comment 1',
  );
  Book book2 = Book(
    title: 'Book 2',
    publishDate: DateTime(2024, 1, 1),
    comment: 'Comment 2',
  );
  Book book3 = Book(
    title: 'Book 3',
    publishDate: DateTime(2024, 1, 10),
    comment: 'Comment 3',
  );
  Book book4 = Book(
    title: 'Book 1',
    publishDate: DateTime(2024, 1, 1),
    comment: 'Comment 3',
  );

  print("book1과 book2는 동일한 책입니까? ${book1 == book2}");
  print("book1과 book3는 동일한 책입니까? ${book1 == book3}");
  print("book2과 book3는 동일한 책입니까? ${book2 == book3}");
  print("book2과 book4는 동일한 책입니까? ${book2 == book4}");
  print("book1과 book4는 동일한 책입니까? ${book1 == book4}");

//연습문제 1 -2)


}
