import 'dart:io';

import 'package:csv/csv.dart';

class CsvService {
  Future<List<List<dynamic>>> getCsvList(String path) async {
    final text = await File(path).readAsString();
    List<List<dynamic>> csv = const CsvToListConverter().convert(text);

    return csv;
  }
}