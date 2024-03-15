class Book {
  String title;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

  String publishDateYMD(DateTime publishDate) {
    return '${publishDate.year}-${publishDate.month}-${publishDate.day}';
  }

  @override
  int get hashCode => publishDateYMD(publishDate).hashCode ^ title.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          publishDateYMD(publishDate) == publishDateYMD(other.publishDate) &&
          title == other.title;

  @override
  String toString() {
    return 'Book{title : $title, comment : $comment, publishDate : ${publishDateYMD(publishDate)}}';
  }

  copyWith({
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
}
