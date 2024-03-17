class Book {
  String title;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

  Book.copyWith(Book origin, {String? title, DateTime? publishDate, String? comment}):
    title = title ?? origin.title,
    publishDate = publishDate ?? origin.publishDate,
    comment = comment ?? origin.comment;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book && runtimeType == other.runtimeType && title == other.title && publishDate.getYearToDay() == other.publishDate.getYearToDay();

  @override
  int get hashCode => title.hashCode ^ publishDate.getYearToDay().hashCode;

  @override
  String toString() {
    return 'Book{publishDate: ${publishDate.getYearToDay()}}';
  }
}

extension DateYearToDay on DateTime {
  String getYearToDay() => toString().split(' ').first;
}

void main() {
  print('제목과 출간일이 같은 책 비교');
  var book1 = Book(title: '전종현의 모험', publishDate: DateTime.tryParse('2024-03-15'), comment: 'comment');
  var book2 = Book(title: '전종현의 모험', publishDate: DateTime.tryParse('2024-03-15'), comment: 'comment');
  print(book1 == book2);

  print('\n출간일을 기준으로 오름차순 정렬');
  List<Book> books = [];
  for (int i = 5; i > 0; i--) {
    books.add(Book(title: '모험$i', comment: 'comment', publishDate: DateTime.tryParse('2024-04-0$i')));
  }
  print(books);
  books.sort((a, b) {
    if (a.publishDate.isAfter(b.publishDate)) {
      return 1;
    } else {
      return -1;
    }
  });
  print(books);

  print('\n깊은 복사 후, 책 비교');
  print(book1 == Book.copyWith(book1));
  print(book1 == Book.copyWith(book1, title:'종현의 모험'));
}
