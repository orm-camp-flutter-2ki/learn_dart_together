import 'package:learn_dart_together/24_03_15/book.dart';

abstract interface class LibraryServiceRepository {
  Future<List<Book>> getBookList(String filePath);
  Future<List<Map<String, dynamic>>> getCheckoutList(String filePath);
}