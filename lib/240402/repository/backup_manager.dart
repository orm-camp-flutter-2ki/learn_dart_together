import 'dart:io';

import 'package:csv/csv.dart';
import 'package:learn_dart_together/240402/repository/library.dart';

class BackupManager {
  // 백업 기능: CSV 파일로 저장
  // final Library _library;

  void backup(Library library) {
    try {
      File file = File(library.backupFileName);
      String csvContent = const ListToCsvConverter().convert(
        [
              [
                'Title',
                'Author',
                'Publish Date',
                'Borrowed',
                'Borrow Date',
                'Return Date',
                'Renewal Count'
              ]
            ] +
            library.books
                .map((book) => [
                      book.title,
                      book.author,
                      book.publishDate != null
                          ? '${book.publishDate!.year}-${book.publishDate!.month}-${book.publishDate!.day}'
                          : '',
                      book.borrowed.toString(),
                      book.borrowDate != null
                          ? '${book.borrowDate!.year}-${book.borrowDate!.month}-${book.borrowDate!.day}'
                          : '',
                      book.returnDate != null
                          ? '${book.returnDate!.year}-${book.returnDate!.month}-${book.returnDate!.day}'
                          : '',
                      book.renewalCount.toString()
                    ])
                .toList(),
      );

      file.writeAsStringSync(csvContent);

      print('Backup completed: ${library.backupFileName}');
    } catch (e) {
      print('Error occurred while creating backup: $e');
    }
  }
}
