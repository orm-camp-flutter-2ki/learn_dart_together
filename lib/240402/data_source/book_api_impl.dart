import 'package:dart_cli_practice/240402/common/file_util.dart';
import 'package:dart_cli_practice/240402/data_source/book_api.dart';
import 'package:dart_cli_practice/240402/model/book.dart';

final bookCsvColumn = 'id,name,isbn,publicationDate\n';

class BookApiImpl implements BookApi {
  final FileUtil _fileUtil;

  BookApiImpl(this._fileUtil);

  @override
  Future<List<Book>> getBooks() async {
    final bookStringList = await _fileUtil.readAsLineString();

    bookStringList.removeAt(0);

    return bookStringList.map(_stringToBook).toList();
  }

  @override
  Future<void> postBook(Book book) async {
    final bookList = await getBooks();
    bookList.add(book);

    StringBuffer buffer = StringBuffer()..write(bookCsvColumn);

    for (final book in bookList) {
      buffer.write(_bookToString(book));
    }

    _fileUtil.write(buffer.toString());
  }

  Book _stringToBook(String bookString) {
    final [id, name, isbn, publicationDate] = bookString.split(',');
    return Book(
      id: id,
      name: name,
      isbn: isbn,
      publicationDate: publicationDate,
    );
  }

  String _bookToString(Book book) {
    final bookString =
        '${book.id},${book.name},${book.isbn},${book.publicationDate}\n';

    return bookString;
  }
}
