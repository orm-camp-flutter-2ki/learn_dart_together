// [!] 다음 동작을 할 수 있도록 Book 클래스 수정
//    1. 제목과 출간일(2024-01-01)이 같으면 같은 책으로 판단
//    2. Book 인스턴스를 담고 있는 컬렉션에 대해 sort()를 수행하여 출간일이 오래된 순서대로 정렬
//    3. deep copy를 위한 copyWith() 메서드를 제공

class Book {
  String title;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

  /// 연, 월, 일만 비교하기 위한 메서드
  String dateForm(DateTime dateValue) {
    return '${dateValue.year}-${dateValue.month}-${dateValue.day}';
  }

  /// toString 오버라이딩
  @override
  String toString() {
    return '[$title] 발행일: ${dateForm(publishDate)} 댓글: $comment';
  }

  /// operator == 오버라이딩
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          dateForm(publishDate) == other.dateForm(other.publishDate) &&
          title == other.title;

  /// operator == 와 hashcode는 세트로 override 한다.
  @override
  int get hashCode => title.hashCode ^ dateForm(publishDate).hashCode;
  // int get hashCode => title.hashCode ^ publishDate.hashCode;

  /// deep copy
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
  /// books 인스턴스 생성
  Book book = Book(title: '삼십세', comment: '재미있게 읽었습니다, 추천합니다.');

  /// books의 깊은 복사
  Book booksClone = book.copyWith(); // 완전히 같다.
  Book booksClone2 = book.copyWith(title: '추락하는 것은 날개가 있다'); // title만 다르다
  Book booksClone3 = book.copyWith(
    publishDate: DateTime(2012, 3, 6),
  );

  /// publishDate만 다르다
  Book booksClone4 = book.copyWith(
      comment: '좋았던 문장.. 한 그루의 나무를 심는 것, 어린애를 만드는 것'); // comment만 다르다
  Book book2 = Book(
      title: '브람스를 좋아하세요',
      publishDate: DateTime(2008, 5, 2),
      comment: '재밌게 읽었네요.');
  Book book3 = Book(
      title: '노인과 바다',
      publishDate: DateTime(2008, 5, 2),
      comment: '노인이 바다를 "라 마르"라고 표현한게 인상적이네요.');

  List<Book> books = [book, booksClone2, booksClone3, booksClone4, book2];

  print('=========< List 요소 출력 >=========');
  for (var element in books) {
    print(element.toString());
  }

  print('\n=========< 발행일 비교 오름차(오래된 순) 정렬 >=========');
  // 발행일 오름차순
  books.sort((a, other) => a.publishDate.compareTo(other.publishDate));
  for (var element in books) {
    print(element.toString());
  }

  print('\n=========< 발행일 비교 내림차(최근 순) 정렬 >=========');
  // 발행일 내림차순
  books.sort((a, other) => a.publishDate.compareTo(other.publishDate) * -1);
  for (var element in books) {
    print(element.toString());
  }
}
