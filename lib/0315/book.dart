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
    return other is Book && hashCode == other.hashCode;
  }

  @override
  int get hashCode => '$title${getDate(publishDate)}'.hashCode;

  String getDate(DateTime dateTime) {
    return '${publishDate.year}-${publishDate.month}-${publishDate.day}';
  }

  Book copyWith({String? title, String? comment, DateTime? publishDate}) {
    return Book(
        title: title ?? this.title,
        comment: comment ?? this.comment,
        publishDate: publishDate ?? this.publishDate
    );
  }
}