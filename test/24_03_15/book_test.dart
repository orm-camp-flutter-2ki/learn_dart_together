import 'package:learn_dart_together/24_03_15/book.dart';
import 'package:test/test.dart';

void main() {
  group('📖 책 테스트를 시작합니다.', () {
    test('동등성 비교', () {
      final book1 = Book(
        title: '오준석의 생존코딩',
        comment: '명저',
        publishDate: DateTime(2024, 01, 01, 01, 01, 01),
      );
      final book2 = Book(
        title: '오준석의 생존코딩',
        comment: '2',
        publishDate: DateTime(2024, 01, 01),
      );
      final book3 = Book(
        title: '오준석의 생존코딩',
        comment: '근데 아직 안 읽어 봤습니다',
        publishDate: DateTime(2023, 10, 15),
      );

      expect(book1 == book2, equals(true));
      expect(book1 == book3, equals(false));
    });

    test('Hashcode 비교 테스트', () {
      final book1 = Book(
        title: 'Spy Family',
        comment: '파워풀한 요르 포저',
        publishDate: DateTime(2024, 01, 01, 11, 11, 11),
      );
      final book2 = Book(
        title: 'Spy Family',
        comment: '구김살 없는 아냐 포저',
        publishDate: DateTime(2024, 01, 01, 09, 11, 23),
      );
      final book3 = Book(
        title: '귀멸의 칼날',
        comment: '탄지로 같은 상냥한 사람이 되자',
        publishDate: DateTime(2024, 01, 01, 09, 11, 23),
      );

      expect(book1.hashCode == book2.hashCode, equals(true));
      expect(book2.hashCode == book3.hashCode, equals(false));
    });

    test('연도별로 책 정렬테스트', () {
      final book1 = Book(
        title: '1',
        comment: '읽을만 해요',
        publishDate: DateTime(1992, 01, 15),
      );
      final book2 = Book(
        title: '2',
        comment: '그냥 그렇습니다',
        publishDate: DateTime(2023, 10, 20),
      );

      expect(book1.compareTo(book2), equals(-1)); // 빨리 출간된 순으로 정렬
    });
  });
}