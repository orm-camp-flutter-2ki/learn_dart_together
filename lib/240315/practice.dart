/*
  다음 동작을 할 수 있도록 Book 클래스를 수정하시오.
  1) 제목과 출간일(2024-01-01)이 같으면 같은 책으로 판단한다
  2) Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.
  3) deep copy 를 위한 copyWith() 메서드를 제공한다
 */
class Book {
  String title;
  String comment;
  DateTime publishDate;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ??
            DateTime(
              DateTime.now().year,
              DateTime.now().month,
              DateTime.now().day,
            );



  // 1)
  @override
  bool operator ==(Object other) {
    return runtimeType == other.runtimeType &&
        title == (other as Book).title &&
        publishDate == other.publishDate;
  }

  @override
  int get hashCode => super.hashCode;


  // 2)
  @override
  String toString() {
    return "책 '$title'은 '$publishDate'에 출간되었습니다.\n";
  }


  // 3)
  Book copyWith({
    String? title,
    String? comment,
    DateTime? publishDate,
  }) {
    return Book(
      title: title ?? this.title,
      comment: comment ?? this.comment,
    );
  }
}

void main() {
  // 오늘 날짜: 2024, 03, 15
  var publishDate = DateTime(2024, 03, 15);
  Book book = Book(title: '1번', comment: 'comment', publishDate: publishDate);
  Book book2 = Book(title: '1번', comment: 'comment222', publishDate: DateTime(2021, 11, 24));
  Book book3 = Book(title: '2번', comment: 'comment',);

  // print(' >> ${book2.publishDate.toString().substring(0, 10)}');
  // 1)
  print(book == book2); // true
  print(book == book3); // false
  print(book2 == book3); // false

  // 2) ** toString() 에서 출력 규칙을 지정해줘야함.
  List<Book> books = [book, book2, book3];
  books.sort((a, b) => a.publishDate.compareTo(b.publishDate));
  print('$books');

  // 3)
  Book book4 = book.copyWith();
  print(book4 == book); // true

  Book book5 = book.copyWith(title: '5번');
  print(book5 == book); // false
}
