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
  String toString() {
    return 'Book{title: $title, publishDate: $publishDate, comment: $comment}';
  }

  // 1) 동등성 비교 규칙 정의 (제목과 출간일이 같으면 같은 책으로 판단한다)
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate == other.publishDate;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;

  // 2) 출간일이 오래된 순서대로 정렬
  @override
  int compareTo(Book other) {
    return this.publishDate.compareTo(other.publishDate);
  }

  // 3) deep copy를 위한 copyWith() 메서드
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

void main() {
  List<Book> books = [
    Book(
        title: 'Must Have 코드팩토리의 플러터 프로그래밍 2판',
        publishDate: DateTime(2024, 2, 1),
        comment: ''),
    Book(
        title: '개발이 재미있는 플러터 앱 프로그래밍',
        publishDate: DateTime(2023, 8, 7),
        comment: ''),
    Book(
        title: '오준석의 플러터 생존 코딩',
        publishDate: DateTime(2021, 5, 28),
        comment: ''),
  ];

  // 출간일이 오래된 순으로 정렬
  books.sort();

  // 정렬된 결과 출력
  for (Book book in books) {
    print('${book.title} - ${book.publishDate}');
  }

  Book junsukBook = books[0];
  Book shallowCopiedBook = junsukBook; //shallowCopy
  Book deepCopiedBook = junsukBook.copyWith(comment: '(사인 포함)'); // deepCopy

  // shallowCopy한 객체는 동등성 비교 재정의 하지 않아도 true를 반환
  print(junsukBook == shallowCopiedBook); // true

  // deepCopy한 객체는 기존 객체와 동등성 비교(==)하면 false가 되나,
  // 동등성 비교 규칙 정의(제목과 출간일이 같으면 같은 책으로 판단)에 따라,
  print(junsukBook == deepCopiedBook); // true를 반환
  print(junsukBook);
  print(deepCopiedBook);
}
