import 'dart:io';

Future<void> fileEditor(String origin, String target) async {
  try {
    final File originFile = File(origin);
    final List<String> lines = await originFile.readAsLines();

    for (String line in lines) {
      line = line.replaceAll('한석봉', '김석봉');
    }

    final File targetFile = File(target);
    await targetFile.writeAsString(lines.join('\n'));
  } catch (e) {
    print('error: $e');
  }
}

void main() {
  final origin = 'sample.csv';
  final target = 'sample_copy.csv';

  fileEditor(origin, target)
      .then((_) => print('파일 조작 완료'))
      .catchError((e) => print('$e 발생'));
}