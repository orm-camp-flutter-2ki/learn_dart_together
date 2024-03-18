class Book {
  String title;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = DateTime.now();

  String _getFormattedDate(DateTime date) {
    return '${date.year}-${date.month}-${date.day}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book && runtimeType == other.runtimeType &&
      title == other.title &&
      _getFormattedDate(publishDate) == _getFormattedDate(other.publishDate);

  @override
  int get hashCode => int.parse('${title.hashCode}${_getFormattedDate(publishDate).hashCode}');

  Book copyWith({
    String? title,
    String? comment,
    DateTime? publishDate,
  }) {
    return Book(
      title: title ?? this.title,
      comment: comment ?? this.comment,
      publishDate: publishDate ?? this.publishDate
    );
  }
}