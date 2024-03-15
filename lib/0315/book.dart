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
  bool operator ==(Object other) {
    if (other is! Book) return false;

    String thisDate = '${publishDate.year}-${publishDate.month}-${publishDate.day}';
    String otherDate = '${other.publishDate.year}-${other.publishDate.month}-${other.publishDate.day}';

    return title == other.title && thisDate == otherDate;
  }
}