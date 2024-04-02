import 'dart:convert';
import 'dart:io';
import 'package:intl/intl.dart';
import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_15/book.dart';
import 'package:learn_dart_together/24_04_02/model/member.dart';

// - 앱을 재시작해도 정보가 유지되어야 한다.
// - 당연히 반납되어야 함

class LibraryService {
  //대출 목록
  late final List<Map<String, dynamic>> _checkoutList = [];
  final List<Book> _bookList;

  //대출 등록
  void enrollCheckoutList(Member member, Book book) {
    if (!_bookList.contains(book)) {
      return;
    }

    const int terms = 14;
    DateTime today = DateTime.now();
    DateTime expiration = today.add(const Duration(days: terms));
    String expirationString = DateFormat('yyyy/MM/dd').format(expiration);

    Map<String, dynamic> listItem = {
      'member': member,
      'book': book,
      'expiration': expirationString
    };

    _checkoutList.add(listItem);
    _bookList.remove(book);
    _saveBookList();
  }

  //대출 조회
  List<Map<String, dynamic>> getCheckoutList({String? order}) {
    final list = _checkoutList.sorted(
        (a, b) => a[order ?? 'expiration'].compareTo(b[order ?? 'expiration']));

    return list;
  }

  //대출 연장
  //TODO: 리팩 개선 필요
  void extendsExpiration(int bookId) {
    final item = _checkoutList.where((e) => e['book'].id == bookId).toList();

    if (item.isEmpty) {
      print('해당 도서는 현재 대출중이 아닙니다.');
    } else {
      final index = _checkoutList.lastIndexOf(item[0]);
      final stringDate =
          _checkoutList[index]['expiration'].replaceAll('/', '-');
      final beforeExpiration = DateTime.parse(stringDate);

      _checkoutList[index]['expiration'] = DateFormat('yyyy/MM/dd')
          .format(beforeExpiration.add(const Duration(days: 7)));
    }
  }

  //대출가능목록 보여주기
  List<Book> get bookList => _bookList;

  //최신 출간 순서대로 보여주기
  List<Book> recentBookList() {
    final List<Book> recentBookList =
        _bookList.sorted((a, b) => b.publishDate.compareTo(a.publishDate));

    return recentBookList;
  }

  //데이터 저장
  //TODO: 객체 분리 필요
  void _saveBookList() async {
    String bookListPath = './assets/book_data/book_list.csv';
    String checkoutListPath = './assets/book_data/checkout_list.csv';

    File bookList = File(bookListPath);
    File checkoutList = File(checkoutListPath);
    final bookString = jsonEncode(_bookList);
    final checkoutString = jsonEncode(_checkoutList);

    await bookList.writeAsString(bookString);
    await checkoutList.writeAsString(checkoutString);
  }

  //대출목록 불러오기
  //TODO: 객체 분리 필요
  Future<List<Map<String, dynamic>>> _getCheckoutList() async {
    List<Map<String, dynamic>> list = [];
    String checkoutListPath = './assets/book_data/checkout_list.csv';

    File checkoutList = File(checkoutListPath);
    int fileCheck =
        await Directory('./assets/book_data/checkout_list.csv').list().length;

    if (fileCheck != 0) {
      String checkoutString = await checkoutList.readAsString();
      list = jsonDecode(checkoutString);
    }

    return list;
  }

  LibraryService({
    required List<Book> bookList,
  }) : _bookList = bookList;
}

void main() {
  Book book = Book(id: 1, title: '위인전', publishDate: DateTime(2024, 04, 01));
  Book book2 = Book(id: 2, title: '위인전', publishDate: DateTime(2023, 05, 11));
  Book book3 = Book(id: 3, title: '위인전', publishDate: DateTime(2020, 08, 01));
  final bookList = [book3, book, book2];
  Member member = Member(
      signUpdate: DateTime.now(),
      name: '전성수',
      address: '서울시',
      digits: '010-1234-1234',
      birthDay: DateTime(1970, 05, 05));
  LibraryService instance = LibraryService(bookList: bookList);

  instance.enrollCheckoutList(member, book);
  print(instance.bookList);
  print(instance.getCheckoutList());
}
