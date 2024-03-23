class Book {
  String title;
  String comment;
  DateTime publishDate;

  Book({
    required this.title,
    required this.comment,
    int? year,
    int? month,
    int? day,
    DateTime? publishDate,
  }) : publishDate = publishDate != null
            ? DateTime(publishDate.year, publishDate.month, publishDate.day)
            : DateTime(
                DateTime.now().year,
                DateTime.now().month,
                DateTime.now().day,
              );

  Book.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        comment = json['comment'],
        publishDate = json['publishDate'];

  Map<String, dynamic> toJson() => {'title': title, 'comment': comment};
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
  int get hashCode => title.hashCode ^ comment.hashCode ^ publishDate.year.hashCode ^ publishDate.month.hashCode ^ publishDate.day.hashCode;
}
