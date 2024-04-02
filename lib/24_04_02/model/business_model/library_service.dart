import 'package:intl/intl.dart';
import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_15/book.dart';
import 'package:learn_dart_together/24_04_02/model/data_class/member.dart';
import 'package:learn_dart_together/24_04_02/utility/file_manager.dart';

// - 앱을 재시작해도 정보가 유지되어야 한다.
// - 당연히 반납되어야 함

class LibraryService {
  //대출 목록
  final List<Map<String, dynamic>> _checkoutList;
  final List<Book> _bookList;
  final FileManager fileManager;

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
    fileManager.saveListToJson('./assets/book_data/book_list.json', _bookList);
    fileManager.saveListToJson(
        './assets/book_data/checkout_list.json', _checkoutList);
  }

  //대출 조회
  List<Map<String, dynamic>> getCheckoutList({String? order}) {
    final list = _checkoutList.sorted(
        (a, b) => a[order ?? 'expiration'].compareTo(b[order ?? 'expiration']));

    return list;
  }

  //대출 연장
  //TODO: 리팩 개선 필요 - checkoutNumber와 일치하는 값을 가진 요소를 바로 뽑을 방법이 없을까?
  void extendsExpiration(int checkoutOrder) {
    bool isValid = _checkoutList
        .any((element) => element['checkoutOrder'] == checkoutOrder);

    if (isValid) {
      for (var element in _checkoutList) {
        if (element['checkoutOrder'] == checkoutOrder) {
          const int renewalDay = 7;
          final beforeExpiration =
              DateTime.parse(element['expiration'].replaceAll('/', '-'));
          final newExpiration =
              beforeExpiration.add(const Duration(days: renewalDay));

          element['expiration'] =
              DateFormat('yyyy/MM/dd').format(newExpiration);
        }
      }
    } else {
      print('대출 번호를 다시 확인해주세요.');
      return;
    }
  }

  //최신 출간 순서대로 보여주기
  List<Book> bookList() {
    final List<Book> recentBookList =
        _bookList.sorted((a, b) => b.publishDate.compareTo(a.publishDate));

    return recentBookList;
  }

  LibraryService({
    required List<Book> bookList,
    required List<Map<String, dynamic>> checkoutList,
    required this.fileManager,
  })  : _bookList = bookList,
        _checkoutList = checkoutList;
}