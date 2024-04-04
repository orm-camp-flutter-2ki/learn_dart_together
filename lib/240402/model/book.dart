class Book {
  static DateTime defaultDate = DateTime(0000 - 00 - 00);
  final int id;
  final String name;
  final String author;
  final DateTime publishedDate;
  final bool isExtended;
  final DateTime startDate;
  final DateTime endDate;

  const Book({
    required this.id,
    required this.name,
    required this.author,
    required this.publishedDate,
    required this.isExtended,
    required this.startDate,
    required this.endDate,
  });

  Book copyWith({
    int? id,
    String? name,
    String? author,
    DateTime? publishedDate,
    bool? isExtended,
    DateTime? startDate,
    DateTime? endDate,
  }) {
    return Book(
      id: id ?? this.id,
      name: name ?? this.name,
      author: author ?? this.author,
      publishedDate: publishedDate ?? this.publishedDate,
      isExtended: isExtended ?? this.isExtended,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
    );
  }

  @override
  String toString() {
    bool isCheckOutable = startDate == defaultDate;
    String result =
        'id: $id, 책이름: $name, 저자: $author, 출판일: ${publishedDate.toString().substring(0, 10)}, 대출: ${(isCheckOutable) ? '가능' : '불가'}';
    if (!isCheckOutable) {
      result +=
          ', 반납 예정일: ${endDate.toString().substring(0, 10)}, 연장: ${isExtended ? '불가' : '가능'}';
    }
    return result;
  }
}
