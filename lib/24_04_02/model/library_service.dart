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
  final List<Map<String, dynamic>> _checkoutList = [];
  final List<Book> _bookList;

  //대출 등록
  void enrollCheckoutList(Member member, Book book) {
    if (!_bookList.contains(book)) {
      print('등록되지 않은 책입니다.');
      return;
    }

    const int terms = 14;
    final DateTime today = DateTime.now();
    final DateTime expiration = today.add(const Duration(days: terms));
    final String expirationString = DateFormat('yyyy/MM/dd').format(expiration);
    final int checkoutNumber = _checkoutList.length + 1;

    Map<String, dynamic> listItem = {
      'checkoutOrder': checkoutNumber,
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
  //TODO: 리팩 개선 필요 - checkoutNumber와 일치하는 값을 가진 요소를 바로 뽑을 방법이 없을까?
  void extendsExpiration(int checkoutNumber) {
    bool isValid = _checkoutList.any((element) => element['checkoutNumber'] == checkoutNumber);
    
    if (isValid) {
      print('대출 번호를 다시 확인해주세요.');
      return;
    } else {
      for (var element in _checkoutList) {
        if (element['checkoutNumber'] == checkoutNumber) {
          const int renewalDay = 7;
          final beforeExpiration = DateTime.parse(element['expiration'].replaceAll('/', '-'));
          final newExpiration = beforeExpiration.add(const Duration(days: renewalDay));

          element['expiration'] = DateFormat('yyyy/MM/dd')
              .format(newExpiration);
        }
      }
    }
  }

  //최신 출간 순서대로 보여주기
  List<Book> bookList() {
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
  print(instance.bookList());
  print(instance.getCheckoutList());
  instance.enrollCheckoutList(member, book2);
  print(instance.bookList());
  print(instance.getCheckoutList());
}
