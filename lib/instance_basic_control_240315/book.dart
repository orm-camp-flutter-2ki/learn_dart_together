class Book implements Comparable<Book> {
  String title;
  int number;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.number,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate =
            publishDate ?? DateTime.now(); // publishDate가 null이면 오늘 날짜를 넣는다.

  // Book의 제목을 비교한다.
  @override
  int compareTo(Book other) => title.compareTo(other.title);
}

void main() {
  List books = []; // (1)List
  Book book1 = Book(
    title: '홍길동전',
    number: 1,
    comment: 'comment',
    publishDate: null,
  );
  Book book2 = Book(
    title: '장화홍련',
    number: 2,
    comment: 'comment2',
    publishDate: DateTime(1999, 1, 11),
  );
  Book book3 = Book(
    title: '임꺽정',
    number: 3,
    comment: 'comment2',
    publishDate: DateTime(1999, 1, 11),
  );
  Book book4 = Book(
    title: '장화홍련',
    number: 4,
    comment: 'comment2',
    publishDate: DateTime(1999, 1, 11),
  );

  //Collection
  books.addAll([book1, book2, book3, book4]);
  //1차 Sort (이름순 정렬)
  books.sort((a, b) => a.username.compareTo(b.username));

  //정렬 상태 확인
  for (var book in books) {
    print(
        'Number: ${book.number}, Title: ${book.username}, Comment: ${book.comment}, Publish Date: ${book.publishDate}');
  }
  //
  books.sort((a, b) {
    if (a.username == b.username && a.publishDate == b.publishDate) {
      print(
          '${a.number}번 ${a.username}, ${b.number}번 ${b.username}은(는) 같은 책이 있습니다');
    } else {
      return a.username.compareTo(b.username);
    }
    return 0;
  });
}
