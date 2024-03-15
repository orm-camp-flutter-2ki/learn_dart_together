class Book {
  String title;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

  // 연습문제 3)
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          title == other.title &&
          publishDate == other.publishDate &&
          comment == other.comment;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;

  @override
  String toString() {
    return '책 제목 : $title, 출간일 : $publishDate, 코멘트 : $comment';
  }
}

void main() {
  DateTime year2024 = DateTime(2024 - 01 - 01);
  DateTime year2023 = DateTime(2023 - 02 - 02);
  DateTime year2022 = DateTime(2022 - 03 - 03);
  Book book1 = Book(title: '쇼펜하우어', comment: '좋아요', publishDate: year2024);
  Book book2 = Book(title: '불변의 법칙', comment: '최고', publishDate: year2023);
  Book book3 = Book(title: '데일 카네기', comment: '추천', publishDate: year2022);

  // 연습문제 1)
  print(book1 == book2); // 제목이 달라서 false 출력

  // 연습문제 2)
  List<DateTime> lists = [];
  lists.add(book1.publishDate);
  lists.add(book2.publishDate);
  lists.add(book3.publishDate);

  lists.sort((a, b) => -a.compareTo(b)); // 출간일 기준 내림차순

  print(lists);
}
