// 제목과 출간일(2024-01-01)이 같으면 같은 책으로 판단한다
// Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.
// deep copy 를 위한 copyWith() 메서드를 제공한다

class Book implements Comparable<Book> {
  String title;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate == other.publishDate;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;

  /// 이제 sort() 메소드를 호출하면 이 함수가 동작한다.
  @override
  int compareTo(Book book) {
    // 출간일이 오래된 순으로 정렬한다.
    return publishDate.compareTo(book.publishDate);

    // 날짜를 초단위로 바꿔서 비교하는 방법도 있다..
    return publishDate.microsecondsSinceEpoch
        .compareTo(book.publishDate.microsecondsSinceEpoch);
  }
}

void main() {
  List<Book> books = [
    Book(
        title: 'Book1',
        comment: 'Good book',
        publishDate: DateTime(2000, 1, 1)),
    Book(
        title: 'Book2',
        comment: 'Interesting read',
        publishDate: DateTime(2024, 1, 1)),
    Book(
        title: 'Book3',
        comment: 'Great story',
        publishDate: DateTime(2019, 1, 1)),
  ];
  books.sort();

  for (Book book in books) {
    print('${book.title} - ${book.publishDate}');
  }
}
