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
          runtimeType == other.runtimeType &&
          title == other.title &&
          getDateTime(publishDate) == other.getDateTime(publishDate);

  @override
  int get hashCode => title.hashCode ^ getDateTime(publishDate).hashCode;

  DateTime getDateTime(DateTime value) {
    int year = value.year;
    int month = value.month;
    int day = value.day;
    return DateTime(year, month, day, 0, 0);
  }

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
  int compareTo(Book other) {
    return getDateTime(publishDate).compareTo(getDateTime(other.publishDate));
  }
}
