class Book implements Comparable<Book> {
  String title;

  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

  String _getFormattedDate(DateTime dateTime) {
    return '${dateTime.year}-${dateTime.month}-${dateTime.day}';
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
  int get hashCode =>
      title.hashCode ^ publishDate.year ^ publishDate.month ^ publishDate.day;

  @override
  int compareTo(Book other) {
    return publishDate.compareTo(other.publishDate);
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
}

void main() {
  final now = DateTime.now();
  final now2 = DateTime.now();

  print(now.hashCode);
  print(now2.hashCode);
  print(now == now2);
}
