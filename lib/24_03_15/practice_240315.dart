class Book {
  String title;
  String comment;
  DateTime publishDate;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

  // 3. copyWith method
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

  // 1. title과 publishDate year, month, day가 같으면 같은 책
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          title == other.title &&
          publishDate.toString().substring(0, 10) ==
              other.publishDate.toString().substring(0, 10);

  @override
  int get hashCode =>
      title.hashCode ^ publishDate.toString().substring(0, 10).hashCode;

  @override
  String toString() {
    return 'title: $title, publishDate: $publishDate';
  }
}
