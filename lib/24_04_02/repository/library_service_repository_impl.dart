import 'dart:convert';

import 'package:learn_dart_together/24_03_15/book.dart';
import 'package:learn_dart_together/24_04_02/model/data_class/member.dart';
import 'package:learn_dart_together/24_04_02/repository/library_service_repository.dart';
import 'package:learn_dart_together/24_04_02/utility/file_manager.dart';

class LibraryServiceRepositoryImpl implements LibraryServiceRepository {
  FileManager fileManager;

  //TODO: fileManager로 받은 데이터가 빈값일때 처리가 필요함. DTO를 통해서 해야될듯
  @override
  Future<List<Book>> getBookList(String filePath) async {
    String stringFromFile = await fileManager.getSavedJson(filePath);
    final jsonString = jsonDecode(stringFromFile) as List;
    List<Book> books = jsonString.map((e) => Book.fromJson(e)).toList();

    return books;
  }

  @override
  Future<List<Map<String, dynamic>>> getCheckoutList(String filePath) async {
    String stringFromFile = await fileManager.getSavedJson(filePath);
    final jsonString = jsonDecode(stringFromFile) as List;
    final List<Map<String, dynamic>> result = jsonString.map((e) => e as Map<String, dynamic>).toList();

    return result;
  }

  LibraryServiceRepositoryImpl({
    required this.fileManager,
  });
}