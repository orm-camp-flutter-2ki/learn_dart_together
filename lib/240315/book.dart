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
  String toString() {
    return 'Book { title: $title, publishDate: $publishDate }';
  } //타이틀과 출간일을 문자열로 변환

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          toString() == other.toString(); //this book에 문자열로 반환한것과 other book에 문자열로 반환한것이 같은지 확인

  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //     other is Book && publishDate == other.publishDate && title == other.title;

  @override
  int get hashCode =>
      title.hashCode ^
      publishDate.hashCode; //^ 연산자는 두 비트가 서로 다를 때 = 1, 같을 때 = 0을 반환

  @override
  int compareTo(Book other) {
    return publishDate.compareTo(other.publishDate);
  } // 오래된 책들부터 비교하여 정렬해주는 코드

  Book copyWith({
    String? title, //파라미터임 매개변수 x임 y(x)
    DateTime? publishDate,
    String? comment,
  }) {
    return Book( //book 클래스 타입 반환
      title: title ?? this.title, //타이틀이 널이 아니면 디스타이틀 타이틀이 없으면 그놈의 타이틀 넣을거다.
      comment: comment ?? this.comment,
      publishDate: publishDate ?? this.publishDate,
    );
  }
}

void main() {
  final Book book1 = Book(
      title: '한정은1', comment: '코멘트', publishDate: DateTime.parse('2024-01-03'));
  final Book book2 = Book(
      title: '한정은2', comment: '코멘트', publishDate: DateTime.parse('2024-01-01'));
  final Book book3 = Book(
      title: '한정은3', comment: '코멘트', publishDate: DateTime.parse('2024-01-02'));
  final Book book4 = Book(
      title: '한정은3', comment: '코멘트', publishDate: DateTime.parse('2024-01-02'));
  final Book book5 = book4; //book5는 book 객체의 book4 인스턴스의 주소를 가지고 있다(?)

  Book book6;

  book4.title = '한정은5';
  print(book5.title); //공유하고 있다는 코드
  print(book4.title);

  print(book1 == book2);
  print(book2 == book3);
  print(book4.hashCode);
  print(book5.hashCode); //책이 같은지 같지 않은지 테스트
  print(book1.publishDate);
  print(book3.publishDate);

  final booklist = [book1, book2, book3];
  booklist.sort();
  for (var book in booklist) {
    print(book);
  }
  print(booklist);


  final Book copiedBook = book3.copyWith();

  print(book3); // 출력: Book { title: Title, publishDate: 2024-01-01 00:00:00.000 }
  print(copiedBook);   // 출력: Book { title: New Title, publishDate: 2024-01-01 00:00:00.000 }

}

//다음 동작을 할 수 있도록 Book 클래스를 수정하시오.
//
//제목과 출간일(2024-01-01)이 같으면 같은 책으로 판단한다.
//Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.
//deep copy 를 위한 copyWith() 메서드를 제공한다.
