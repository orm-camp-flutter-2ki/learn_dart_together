class Book implements Comparable<Book> {
  String title;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ??
      DateTime.now();


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate == other.publishDate;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;

  Book copyWith({String? title, String? comment, DateTime? publishDate}) {
    return Book(
      title: title ?? this.title,
      comment: comment ?? this.comment,
      publishDate: publishDate ?? this.publishDate,
    );
  }

  @override
  String toString() {
    return 'Book{title: $title, publishDate: $publishDate, comment: $comment}';
  }

  @override
  int compareTo(Book other) {
    return publishDate.compareTo(other.publishDate);
  }
}

void main() {
  DateTime test = DateTime(2024, 01, 01);
  DateTime test2 = DateTime(2024, 01, 02);
  print(test.compareTo(test2));
}
