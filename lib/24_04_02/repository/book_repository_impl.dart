import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';

import '../model/book.dart';
import 'book_repository.dart';

///

class BookRepositoryImpl implements BookRepository {
  @override
  delayBook(int userId, int bookId) async {
    final books = await _getBooks();
    final book = books.firstWhere((element) => element.id == bookId);
    DateTime returnDate = DateTime.parse(book.returnDate);
    returnDate = returnDate.add(Duration(days: 7));
    Book newBook = book.copyWith(returnDate: returnDate.toString());

    writeFile(newBook);
  }

  /// order값을 기준으로 리스트를 정렬해서 내보낸다.
  @override
  Future<List<Book>> getBooksByOrder(
      {required bool isAscending, required BookOrder order}) async {
    final books = await _getBooks();

    books.sort((a, b) {
      switch (order) {
        case BookOrder.id:
          return isAscending ? a.id.compareTo(b.id) : b.id.compareTo(a.id);
        case BookOrder.title:
          return isAscending
              ? a.title.compareTo(b.title)
              : b.title.compareTo(a.title);
        case BookOrder.author:
          return isAscending
              ? a.author.compareTo(b.author)
              : b.author.compareTo(a.author);
        case BookOrder.loanDate:
          return isAscending
              ? a.loanDate.compareTo(b.loanDate)
              : b.loanDate.compareTo(a.loanDate);
        case BookOrder.returnDate:
          return isAscending
              ? a.returnDate.compareTo(b.returnDate)
              : b.returnDate.compareTo(a.returnDate);
        case BookOrder.publishDate:
          return isAscending
              ? a.publishDate.compareTo(b.publishDate)
              : b.publishDate.compareTo(a.publishDate);
        case BookOrder.isLoaned:
          return a.isLoaned ? (b.isLoaned ? 0 : -1) : (b.isLoaned ? 1 : 0);
        case BookOrder.isReturned:
          return a.isReturned
              ? (b.isReturned ? 0 : -1)
              : (b.isReturned ? 1 : 0);

        default:
          // 기본적으로는 제목을 기준으로 오름차순으로 정렬
          return a.title.compareTo(b.title);
      }
    });

    final formattedBooks = books.map((book) {
      return book.copyWith(
        loanDate: book.formattedLoanDate,
        returnDate: book.formattedReturnDate,
        publishDate: book.formattedPublishDate,
      );
    }).toList();

    // TODO. 일단 출력용으로 쓰자

    return formattedBooks;
  }

  /// 책을 대출합니다.
  @override
  Future<String> loanBook(int userId, int bookId) async {
    final books = await _getBooks();
    final book = books.firstWhere((element) => element.id == bookId);
    Book newBook = book.copyWith(isLoaned: true, isReturned: false);

    writeFile(newBook);
    return '책이 대출 되었습니다.';
  }

  @override
  loanableBooks() async {
    List<Book> books =
        await getBooksByOrder(isAscending: true, order: BookOrder.isLoaned);

    books.removeWhere((e) => e.isLoaned == true);
    return books;
  }

  /// 책을 반납합니다.
  @override
  returnBook(int userId, int bookId) async {
    final books = await _getBooks();
    final book = books.firstWhere((element) => element.id == bookId);
    Book newBook = book.copyWith(
      isReturned: true,
      isLoaned: false,
    );
    writeFile(newBook);
  }

  @override
  Future<String> readFile() async {
    File json = File("lib/24_04_02/data_source/book.json");
    final books = await json.readAsString();
    return books;
  }

  Future<List<Book>> _getBooks() async {
    final books = await readFile();
    final List<Map<String, dynamic>> jsonBooks =
        jsonDecode(books).cast<Map<String, dynamic>>();
    List<Book> bookList = jsonBooks.map((e) => Book.fromJson(e)).toList();
    return bookList;
  }

  @override
  Future<void> writeFile<T>(T book) async {
    File file = File("lib/24_04_02/data_source/book.json");
    final books = await _getBooks();

    if (book is Book) {
      final index = books.indexWhere((element) => element.id == book.id);
      if (index != -1) {
        books[index] = book;
        await file
            .writeAsString(jsonEncode(books.map((e) => e.toJson()).toList()));
      }
    }

    List<List<dynamic>> rows = [];
    rows.add([
      "Id",
      "Title",
      "Author",
      "LoanDate",
      "IsLoaned",
      "ReturnDate",
      "PublishDate",
      "IsReturned"
    ]);

    for (Book book in books) {
      rows.add([
        book.id,
        book.title,
        book.author,
        book.loanDate,
        book.isLoaned,
        book.returnDate,
        book.publishDate,
        book.isReturned,
      ]);
    }

    String csvData = ListToCsvConverter().convert(rows);

    await File("book.csv").writeAsString(csvData);
  }
}
