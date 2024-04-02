import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';

class FileManager {
  static final FileManager _instance = FileManager._init();

  //데이터 저장
  void saveListToJson(String filePath, List<dynamic> data) async {
    File file = File(filePath);
    final dataString = jsonEncode(data);

    await file.writeAsString(dataString);
  }

  //대출목록 불러오기
  Future<String> getSavedJson(String filePath) async {
    String list = '';
    final File file = File(filePath);
    final dataString = await file.readAsString();

    if (dataString.isNotEmpty) {
      list = dataString;
    }

    return list;
  }

  FileManager._init();

  factory FileManager.getInstance() {
    return _instance;
  }
}
