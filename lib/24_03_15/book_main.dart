import 'book.dart';

void main() {
  List<Book> books = [
    Book(title: "츄", publishDate: DateTime(2024, 1, 1), comment: "100만 볼트"),
    Book(title: "카", publishDate: DateTime(2022, 1, 1), comment: "전광석화"),
    Book(title: "피", publishDate: DateTime(2020, 1, 1), comment: "아이언 테일"),
  ];

  // 2. Book 인스턴스 담고 있는 컬렉션에 대해 sort()를 수행하여 출간일이 오래된 순서로 정렬
  books.sort();

  for (var book in books) {
    print("${book.title}: ${book.publishDate}");
  }
}
