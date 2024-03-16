class Book {
  String title;
  String comment;
  DateTime publishDate;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

  // 3. copyWith method
  Book copyWith({
    String? title,
    String? comment,
    DateTime? publishDate,
  }) {
    return Book(
      title: title ?? this.title,
      comment: comment ?? this.comment,
      publishDate: publishDate ?? this.publishDate,
    );
  }

  // 1. title과 publishDate year, month, day가 같으면 같은 책
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          title == other.title &&
          publishDate.toString().substring(0, 10) ==
              other.publishDate.toString().substring(0, 10);

  @override
  int get hashCode =>
      title.hashCode ^ publishDate.toString().substring(0, 10).hashCode;

  @override
  String toString() {
    return 'title: $title, publishDate: $publishDate';
  }
}

void main() {
  Book book = Book(
      title: 'goodDay', comment: 'good', publishDate: DateTime(1955, 10, 20));

  Book book1 = Book(
      title: 'goodDay', comment: 'bad', publishDate: DateTime(1955, 10, 20));

  Book book2 = Book(
      title: 'badDay', comment: 'bad', publishDate: DateTime(1965, 10, 20));

  Book book3 = Book(
      title: 'badMonth', comment: 'hmm', publishDate: DateTime(1965, 9, 21));

  Book book4 = book.copyWith();

  print('${book4.title}, ${book4.comment}, ${book4.publishDate}');

  print(book == book1);

  print('here ${book.hashCode}, ${book4.hashCode}');

  final books = <Book>[];

  books.add(book);
  books.add(book1);
  books.add(book2);
  books.add(book3);

  // Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.
  books.sort((a, b) => a.publishDate.compareTo(b.publishDate));

  print(books.toString());
}
