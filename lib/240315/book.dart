class Book implements Comparable<Book> {
  String title;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          title == other.title &&
          publishDate.year == other.publishDate.year &&
          publishDate.month == other.publishDate.month &&
          publishDate.day == other.publishDate.day;

  @override
  int get hashCode =>
      '$title${publishDate.year}${publishDate.month}${publishDate.day}'
          .hashCode;

  @override
  int compareTo(Book other) {
//제목과 출판일이 같으면 같은 책으로 판단 연습문제 1 -1)
    var cmp = title.compareTo(other.title);
    if (cmp == 0) {
      cmp = publishDate.compareTo(other.publishDate);
    }
//출판일을 기준으로 비교
    return cmp;
  }
}
