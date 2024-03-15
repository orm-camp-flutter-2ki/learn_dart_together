class Book {
  String title;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

  Book copyWith({String? title, String? comment, DateTime? publishDate}) {
    return Book(
        title: title ?? this.title,
        comment: comment ?? this.comment,
        publishDate: publishDate);
  }

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
  String toString() {
    return title;
  }
}

void main() {
  DateTime yesterday = DateTime(2024, 03, 14);
  DateTime today = DateTime(2024, 03, 15);
  DateTime today2 = DateTime(2024, 03, 15);
  DateTime weekAgo = DateTime(2024, 03, 08);

  Book lee = Book(title: '이순신', comment:'위인전', publishDate: today);
  Book hong = Book(title: '홍길동', comment:'위인전', publishDate: today);
  Book kim = Book(title: '김정호', comment:'위인전', publishDate: yesterday);
  Book jeon = Book(title: '전성수', comment:'위인전', publishDate: weekAgo);

  List<Book> books = [lee, kim, hong, jeon];
  print('정렬 전 $books');

  books.sort((a, b) => a.publishDate.compareTo(b.publishDate));

  print('정렬 후 $books');
}