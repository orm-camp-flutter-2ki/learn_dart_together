import 'book.dart';

void main() {// 사용자가 월 , 일에 1, 1 같이 0을 떼고 넣을 수도 있다?
  Book a = Book(title: '원피스', publishDate: DateTime(2023, 01, 01), comment: '코딩계의 미호크가 되자');
  Book b = Book(title: '원피스', publishDate: DateTime(2023, 01, 02), comment: '나루토의 환영분신술');
  Book c = Book(title: '나루토', publishDate: DateTime(2024, 01, 01), comment: '록리같이 열심히');
  Book d = Book(title: '드래곤볼', publishDate: DateTime(1992, 01, 01), comment: '인조인간 18호');
  Book e = Book(title: '나루토', publishDate: DateTime(2024, 11, 02), comment: '사륜안으로 코딩공부를 할 수 있음 얼마나 좋을까');


  List<Book> bookshelf = []; // Bookshelf n. 책선반, 책장

  // bookshelf.add(a);
  // bookshelf.add(b);
  // bookshelf.add(c);
  // bookshelf.add(d);
  // bookshelf.add(e);

  bookshelf.addAll([a, b, c, d, e]); // addAll 기억하자

  bookshelf.sort((a, b) => a.publishDate.compareTo(b.publishDate));

  for (Book book in bookshelf) {
    print('${book.title}: ${book.cutDateTime(book.publishDate)}');
  }

  Book originalBook = Book(
    title: '복사기에 넣을 책',
    comment: '복사가 되어라~',
  );

  Book copiedBook = originalBook.copyWith();
  print(originalBook == copiedBook);
}

