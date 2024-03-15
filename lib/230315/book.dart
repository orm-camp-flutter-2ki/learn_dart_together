class Book implements Comparable<Book> {
  String title;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

  // Comparable interface를 구현하여 정렬 시 출간일 오래된 순서로 정렬되도록 함
  @override
  int compareTo(Book other) {
    return this.publishDate.compareTo(other.publishDate);
  }

  // deep copy를 위한 copyWith() 메서드
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

  Book shallowCopiedBook = junsukBook;
  Book deepCopiedBook = junsukBook.copyWith(comment: '(사인 포함)');

  print('원본 책: ${junsukBook.title} ${junsukBook.comment}');

  print('얕은 복사 책: ${shallowCopiedBook.title} ${shallowCopiedBook.comment}');
  print(junsukBook == shallowCopiedBook); // true

  print('깊은 복사 책: ${deepCopiedBook.title} ${deepCopiedBook.comment}');
  print(junsukBook == deepCopiedBook); // false
}