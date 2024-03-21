import 'dart:io';

final defaultPath = './lib/tmp/';

class CsvManager {
  void writeCsv(String title, List<String> text) {
    File(defaultPath + title).writeAsStringSync(text.join('\n'));
  }

  Future<List<String>> readCsv(String title) async {
    return await File(defaultPath + title).readAsLines();
  }

  Future<void> replaceValueAndCopy(
      String originTitle, String copyTitle, String from, String to) async {
    var csvList = await readCsv(originTitle)
        .catchError((onError) => throw Exception('파일을 찾을 수 없습니다.'));

    final result = csvList.map((e) => e.replaceAll(from, to)).toList();
    writeCsv(copyTitle, result);
  }
}
