class Book implements Comparable<Book> {
  String title;
  DateTime publishDate;
  String comment;

  Book({required this.title, required this.comment, DateTime? publishDate})
      : publishDate = publishDate ?? DateTime.now();

  Book copyWith({String? title, DateTime? publishDate, String? comment}) {
    return Book(
      title: title ?? this.title,
      publishDate: publishDate ?? this.publishDate,
      comment: comment ?? this.comment,
    );
  }

  String get publishDateFormatted {
    return '${publishDate.year}-${publishDate.month}-${publishDate.day}';
  }

  @override
  int get hashCode => title.hashCode ^ publishDate.toString().hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Book) return false;
    return title == other.title &&
        publishDate.toString() == other.publishDate.toString();
  }

  @override
  int compareTo(Book other) {
    return publishDateFormatted.toString().compareTo(other.publishDateFormatted.toString());
  }
}
