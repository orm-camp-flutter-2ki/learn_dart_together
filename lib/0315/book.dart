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
    String thisDate = '${publishDate.year}-${publishDate.month}-${publishDate.day}';
    String otherDate = '${publishDate.year}-${publishDate.month}-${publishDate.day}';
    return identical(this, other) || other is Book && runtimeType == other.runtimeType && title == other.title && thisDate == otherDate;
  }
}