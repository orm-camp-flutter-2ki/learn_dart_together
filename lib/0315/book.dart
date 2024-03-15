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
    return title == other.title && getDate(publishDate) == other.getDate(other.publishDate);
  }

  String getDate(DateTime dateTime) {
    return '${publishDate.year}-${publishDate.month}-${publishDate.day}';
  }
}