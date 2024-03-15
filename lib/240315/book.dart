class Book {
  String title;
  DateTime publishDate;
  String comment;
  String now = DateTime.now().toString().substring(0, 10);

  Book({required this.title, required this.comment, DateTime? publishDate
      // runtime때 실행이돼서 바로 넣을 수 없다
      })
      : publishDate = publishDate ?? DateTime.now();

  // 1번
  @override
  operator ==(Object object) => object is Book && publishDate == object.publishDate;

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
  int get hashCode => publishDate.hashCode;
}

void main(List<String> args) {
  // 1번
  final book1 = Book(title: '제목1', comment: '코멘트1', publishDate: DateTime.parse('3024-03-15'));
  final book2 = Book(title: '제목2', comment: '코멘트2', publishDate: DateTime.parse('1024-03-15'));

  //print(book1 == book2);

  final book3 = Book(title: '제목1', comment: '코멘트1', publishDate: DateTime.parse('2024-03-15'));
  final book4 = Book(title: '제목2', comment: '코멘트2', publishDate: DateTime.parse('4024-03-14'));
  // 2번
  List<Book> books = [
    book1,
    book2,
    book3,
    book4,
  ];
  // 내림차순 정렬
  books.sort((a, b) => a.publishDate.compareTo(b.publishDate));

  for (var element in books) {
    print(element.publishDate);
  }
  // 3번
  Book book5 = book1.copyWith(title: '변경2');
  //print(book5.title);
}
