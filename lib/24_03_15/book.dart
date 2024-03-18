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
  bool operator ==(Object other) => //제목과 출간일이 같으면 같은 책으로 판단
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate.year == other.publishDate.year &&
          publishDate.month == other.publishDate.month &&
          publishDate.day == other.publishDate.day;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode; //두개 다 포함(^)

  int compareTo(Book book) {
    //출간일이 오래된 순서대로 정렬
    return publishDate.compareTo(book.publishDate);
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
