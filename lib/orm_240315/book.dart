class Book {
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
      runtimeType == other.runtimeType &&
      title == other.title &&
        publishDate.year == other.publishDate.year &&
  publishDate.month == other.publishDate.month &&
  publishDate.day == other.publishDate.day;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;

  @override
  int compareTo(Book other) => publishDate.compareTo(other.publishDate);

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
  // 1) 제목과 출간일이 같으면 같은 책으로 판단한다.
  final book1 =
      Book(title: '견우와 직녀', comment: '로맨스', publishDate: DateTime(2024, 1, 1));
  final book2 =
      Book(title: '견우와 직녀', comment: '로맨스', publishDate: DateTime(2024, 1, 1));
  final book3 =
      Book(title: '살인자ㅇ난감', comment: '스릴러', publishDate: DateTime(2023, 4, 1));

  print(book1 == book2); // true
  print(book1 == book3); // false

  // 2) Book 인스턴스를 담고 있는 컬렉션에 대해 sort()를 수행하여 출간일이 오래된 순서대로 정렬한다.
  final books = <Book>[
    book1,
    book2,
    book3,
    Book(title: '셜록 홈즈', comment: '추리', publishDate: DateTime(1854, 3, 15)),
  ];

  books.sort();
  for (final book in books) {
    print('${book.title} - ${book.publishDate}');
  }

  // 3) deep copy를 위한 copyWith() 메서드를 제공한다.
  final copiedBook = book1.copyWith(comment: '로맨스 동화');

  print(copiedBook.title); // 책 제목
  print(copiedBook.publishDate); // 2024-01-01
  print(copiedBook.comment); // 수정된 설명
}
