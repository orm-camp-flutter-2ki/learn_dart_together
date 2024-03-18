class Book implements Comparable<Book> {
  String title;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Book &&
              title == other.title &&
              publishDate.year == other.publishDate.year &&
              publishDate.month == other.publishDate.month &&
              publishDate.day == other.publishDate.day;

  @override
  int get hashCode =>
      '$title${publishDate.year}${publishDate.month}${publishDate.day}'.hashCode;

  @override
  int compareTo(Book other) {
//제목과 출판일이 같으면 같은 책으로 판단 연습문제 1 -1)
    var cmp = title.compareTo(other.title);
    if (cmp == 0) {
      cmp = -publishDate.compareTo(other.publishDate);
    }
//출판일을 기준으로 비교
    return cmp;
  }

//연습문제 3)
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


//연습문제 2)
void main() {
  List<Book> books = [
    Book(title: '동기부여', comment: 'Good book', publishDate: DateTime.parse('2024-01-01')),
    Book(title: '동기부여', comment: 'Another good book', publishDate: DateTime.parse('2024-01-01')),
    Book(title: '환경설정', comment: 'Good book', publishDate: DateTime.parse('2023-01-01')),
  ];

  // 오름차순 정렬
  books.sort((a, b) => a.publishDate.compareTo(b.publishDate));

  // 결과 출력
  for (var book in books) {
    print('${book.title} - ${book.publishDate}');
  }
}

//연습문제 3) copyWith() 메소드 깊은복사 확인
// void main() {
//   var book1 = Book(
//     title: '동기부여',
//     comment: 'Good book',
//     publishDate: DateTime.parse('2024-01-01'),
//   );
//
//   //깊은 복사 수행
//   var book2 = book1.copyWith(publishDate: DateTime.parse('2024-02-01'));
//
//   //변경 확인
//   print('book1: ${book1.title} - ${book1.publishDate} - ${book1.hashCode}');
//   print('book2: ${book2.title} - ${book2.publishDate} - ${book1.hashCode}');
// }