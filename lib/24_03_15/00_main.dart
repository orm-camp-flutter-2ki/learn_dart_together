import '01_book.dart';

void main() {
  // 연습문제 1번

  Book book1 = Book(title: 'book1', comment: '소설');

  Book book2 =
  Book(title: 'book2', comment: '만화', publishDate: DateTime(2024, 01, 01));

  Book book3 =
  Book(title: 'book2', comment: '잡지', publishDate: DateTime(2024, 01, 01));

  Book book4 =
  Book(title: 'book1', comment: '소설', publishDate: DateTime(2024, 01, 01));

  print('book3 == book4 제목 다름, 출간일 같음 : ${book3 == book4}'); // false
  print('book1 == book2 제목 다름, 출간일 다름 : ${book1 == book2}'); // false
  print('book2 == book3 제목 같음, 출간일 같음 : ${book2 == book3}'); // true
  print('book1 == book4 제목 같음, 출간일 다름 : ${book1 == book4}'); // false

  // 만약 title의 해쉬코드를 같게 만든다면
  print(book1.hashCode);    // hashcode : 638432070
  print(book2.hashCode);    // hashcode : 553134364
  print(book3.hashCode);    // hashcode : 553134364
  print(book4.hashCode);    // hashcode : 638432070

  // 연습문제 2번
  final List<Book> books = <Book>[book1, book2, book3, book4];

  books.sort((a, b) => a.publishDate.compareTo(b.publishDate)); // 오래된 순으로 오름차순

  for (Book book in books) {
    print('제목: ${book.title}, 출간일: ${book.publishDate}');
  }

  books.sort(
          (a, b) => a.publishDate.compareTo(b.publishDate) * -1); // 최신순으로 내림차순

  for (Book book in books) {
    print('제목: ${book.title}, 출간일: ${book.publishDate}');
  }

  // 연습문제 3번

  Book fakeBook = Book(
      title: 'fakeBook', comment: '책인척', publishDate: DateTime(2024, 01, 01));

  Book fakeBook2 = fakeBook.copyWith();
  Book fakeBook3 = fakeBook.copyWith(title: 'realBook');
  Book fakeBook4 = fakeBook.copyWith(comment: '근데 진짜책');
  Book fakeBook5 = fakeBook.copyWith(publishDate: DateTime.now());

  final List<Book> fakeBooks = <Book>[
    fakeBook,
    fakeBook2,
    fakeBook3,
    fakeBook4,
    fakeBook5
  ];

  for (int i = 0; i < fakeBooks.length; i++) {
    print(
        '${i + 1}번째: ${fakeBooks[i].title}, ${fakeBooks[i].comment}, ${fakeBooks[i].publishDate}');
  }
}
