import 'package:dart_cli_practice/240402/data_source/book_api.dart';
import 'package:dart_cli_practice/240402/data_source/book_api_impl.dart';
import 'package:dart_cli_practice/240402/model/book.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../mock/mock_file_util.dart';

void main() {
  final mockFileUtil = MockFileUtil('test/240402/resource/book.csv');

  BookApi? api;

  setUp(() {
    reset(mockFileUtil);
    api = BookApiImpl(mockFileUtil);
  });

  tearDown(() {
    reset(mockFileUtil);
  });

  group('BookApi 클래스의', () {
    group('postBook() 메소드는', () {
      test('새로 생성된 Book를 기존 데이터 파일에 추가한다.', () async {
        // given
        final expected = Book(
          id: '1',
          name: '전자사전',
          isbn: '151195264-4',
          publicationDate: '2024/04/02',
        );
        final contents = '''
id,name,isbn,publicationDate
1,전자사전,151195264-4,2024/04/02
''';

        // when
        when(mockFileUtil.readAsLineString())
            .thenAnswer((_) async => mockBookStringList);
        when(mockFileUtil.write(contents));
        // when(mockFileUtil.write(contents)).thenAnswer((_) async {});
        await api!.postBook(expected);

        // then
        verify(mockFileUtil.write(contents)).called(1);
      });
    });

    group('getBooks() 메소드는', () {
      test('readAsLineString() 메소드로 파일을 읽어 List<Book> 를 반환한다.', () async {
        // given
        final expected = [
          Book(
            id: '1',
            name: '전자사전',
            isbn: '151195264-4',
            publicationDate: '2024/04/02',
          )
        ];

        // when
        when(mockFileUtil.readAsLineString())
            .thenAnswer((_) async => mockBookStringList);
        final bookList = await api!.getBooks();

        // then
        expect(bookList, expected);
      });
    });
  });
}
