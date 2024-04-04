import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_15/book.dart';
import 'package:learn_dart_together/24_04_02/model/business_model/library_service.dart';
import 'package:learn_dart_together/24_04_02/model/data_class/member.dart';
import 'package:learn_dart_together/24_04_02/repository/library_service_repository.dart';
import 'package:learn_dart_together/24_04_02/repository/library_service_repository_impl.dart';
import 'package:learn_dart_together/24_04_02/utility/file_manager.dart';
import 'package:test/test.dart';

void main() async {
  group('Library Service Model 메서드 테스트', () {
    FileManager fileManager = FileManager.getInstance();
    LibraryServiceRepository repo =
        LibraryServiceRepositoryImpl(fileManager: fileManager);
    final member = Member(
        signUpdate: DateTime(2024 - 04 - 02),
        name: '전성수',
        address: '서울시',
        digits: '010-1234',
        birthDay: DateTime(2024 - 01 - 01));

    LibraryService instance = LibraryService(
        bookList: bookList, checkoutList: [], fileManager: fileManager);

    test('대여 등록 메서드 테스트', () {
      instance.enrollCheckoutList(member, book1);

      final expectValue = book1;
      final value = instance.getCheckoutList().map((e) => e['book']).toList();

      expect(DeepCollectionEquality().equals(value[0], expectValue), true);
    });

    test('대출 연장 메서드 테스트', () {
      instance.enrollCheckoutList(member, book1);
      instance.extendsExpiration(1);
      //최초 2주 + 1주
      final expectValue = '2024/04/24';
      final value =
          instance.getCheckoutList().map((e) => e['expiration']).toList();
      expect(DeepCollectionEquality().equals(value[0], expectValue), true);
    });

    test('최신 출간 리스트 메서드 테스트', () {
      final list = instance.bookList();
      final expectValue = [book1, book2, book3];

      expect(DeepCollectionEquality().equals(list, expectValue), true);
    });
  });
}

final bookList = [book2, book3, book1];
final book1 = Book(id: 1, title: '1권', publishDate: DateTime(2024 - 01 - 01));
final book2 = Book(id: 2, title: '2권', publishDate: DateTime(2008 - 01 - 01));
final book3 = Book(id: 3, title: '3권', publishDate: DateTime(1998 - 01 - 01));