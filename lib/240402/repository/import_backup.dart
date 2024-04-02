import 'dart:io';

import 'package:csv/csv.dart';
import 'package:learn_dart_together/240402/repository/library.dart';

import '../model/book.dart';

class ImportBackUp {
  final Library _library;

  ImportBackUp(this._library);

  // 백업된 파일 불러오기
  void importBackup() {
    try {
      File file = File(_library.backupFileName);
      String csvContent = file.readAsStringSync();
      List<List<dynamic>> csvList = CsvToListConverter().convert(csvContent);

      // 첫 번째 행은 컬럼명이므로 제외하고 책 정보 추가
      for (int i = 1; i < csvList.length; i++) {
        List<dynamic> row = csvList[i];
        Book book = Book(
          row[0].toString(),
          row[1].toString(),
          DateTime.tryParse(row[2].toString()),
        );
        book.borrowed = row[3].toString().toLowerCase() == 'true';
        book.borrowDate = row[4].toString().isEmpty
            ? null
            : DateTime.tryParse(row[4].toString());
        book.returnDate = row[5].toString().isEmpty
            ? null
            : DateTime.tryParse(row[5].toString());
        book.renewalCount = int.tryParse(row[6].toString()) ?? 0;
        _library.books.add(book);
      }

      print('Backup imported successfully: $_library.backupFileName');
    } catch (e) {
      print('Error occurred while importing backup: $e');
    }
  }
}
