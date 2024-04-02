import 'package:learn_dart_together/240402/model/book.dart';
import 'package:learn_dart_together/240402/model/check_out_list.dart';
import 'package:learn_dart_together/240402/model/user.dart';
import 'package:learn_dart_together/240402/repository/book_repository.dart';

class BookRepositoryImpl implements BookRepository {
  @override
  Book addBook(int id, String title) {
    // 책의 정보를 입력한다.
    // id 자동생성 추후 구현
    // id 중복체크는 있어야 함
    // book list의 등록은?
    Book book = Book(id: id, title: title);
    return book;
  }

  @override
  User addUser(Map<String, dynamic> person) {
    // 회원 정보를 입력한다.
    // 회원 정보 list 입력은 할일 있을까?
    User user = User.fromJson(person);
    return user;
  }

  @override
  List<CheckOutList> selectCheckOutList(checkOutList, sortedBy) {
    // 정렬 기준 교체(id, name, publishDate)
    final List<CheckOutList> list = checkOutList;
    // TODO: enum으로 정리!
    // 최근 출간된 순서대로 볼 수
    if (checkOutList.book.publichDate != null) {
      switch (sortedBy) {
        case 'id':
          list.sort((a, b) => a.book.id.compareTo(b.book.id));
        case 'name':
          list.sort((a, b) => a.book.title.compareTo(b.book.title));
        default:
          list.sort((a, b) => a.book.publishDate!.compareTo(b.book.publishDate!));
      }
    } else {
      throw Exception('출간일을 입력해주세요');
    }

    // 대출 가능한 책만 볼 수 있다.
    list.where((element) => element.book.isCkeckout == true);
    // 반납 기간이 임박한 순서대로 정렬
    // TODO: 오름차순 맞는지 확인
    list.sort((a, b) => a.dueReturn.compareTo(b.dueReturn));

    // TODO: 날짜를 표시할 때는 (2013/10/20)

    // 대출 목록을 표시
    checkOutList.forEach(print);
    return list;
  }

  @override
  List<Book> checkOutBook(List<Book> books) {
    int maxDue = 14;
    // 회원이 책을 빌려가면 대출이력이 저장된다.
    // 기본대출기간 2주
    // isCkeckout (true : 대출중/ false : 대출 가능)
    final checkedBooks = books.map((e) => e.copyWith(isCkeckout: true, dueReturn: DateTime.now().add(Duration(days: maxDue)))).toList();

    return checkedBooks;
  }

  @override
  List<Book> extendDueReturn(List<Book> books) {
    int extendedDue = 7;
    // 연장하면 1주일 연장
    // 가독성을 더 좋게 할 순 없을까..
    final extendedBooks =
        books.map((e) => e.copyWith(isExtended: true, dueReturn: e.dueReturn != null ? getRawDate(e.dueReturn!).add(Duration(days: extendedDue)) : throw Exception('반납기한이 없습니다.'))).toList();

    return extendedBooks;
  }

  @override
  List<Book> returnBook(List<Book> books) {
    final today = DateTime.now();

    // 반납
    // 반납상태를 false로, dueReturn을 null로
    final returnedBooks = books.map((e) => e.copyWith(isCkeckout: false, isExtended: false, dueReturn: null)).toList();

    return returnedBooks;
  }

  @override
  List<Book> automaticReturn(List<Book> books) {
    final today = DateTime.now();

    // 기간 지나면 자동 반납 dueReturn == today -> 자동 반납
    // 방법1.
    final returnedBooks = books.where((book) => book.dueReturn != null && DateTime(int.parse(book.dueReturn!)).difference(today).inDays == 0).toList();
    // 방법2.
    // final returnedBooks = booksList.map((book) {
    //   if (book.dueReturn != null && book.dueReturn!.difference(today).inDays == 0) {
    //     book.update((book) => book.copyWith(isCheckout: false));
    //   }
    //   return book;
    // }).toList();

    return returnedBooks;
  }
}

main() {
  // addBook
  // Book book = Book(id: 1, title: '책1');
  Book book1 = BookRepositoryImpl().addBook(1, '책1');
  // print(book1);

  // addUser
  final userInfo = {
    'userId': 1,
    'userName': '홍길동',
    'address': '서울',
    'phoneNumber': '010-1234-5678',
    'birth': DateTime(1994, 08, 24),
  };
  User user1 = BookRepositoryImpl().addUser(userInfo);
  // final List<Book> bookList = List<Book>.filled(1, book1);
  // print(user1);

  // checkOutBooks, extendBooks
  // List<Book> checkOutedBooks = BookRepositoryImpl().checkOutBook(bookList);
  // print('checkOutedBooks : $checkOutedBooks');

  // final extendedBooks = BookRepositoryImpl().extendDueReturn(checkOutedBooks);
  // print('extended : $extendedBooks');

  Book book2 = Book(id: 2, title: '책2', dueReturn: DateTime.now());
  final List<Book> bookList = [book1, book2];
}
