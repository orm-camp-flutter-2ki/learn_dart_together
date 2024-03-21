import 'dart:io';

Future<void> manipulateCSV(String source, String target) async {
  try {
    final file = File(source);
    List<String> csvList = await file.readAsLines();

    StringBuffer buffer = StringBuffer();

    for (final line in csvList) {
      if (line.contains('한석봉')) {
        final changedLine = line.replaceAll('한석봉', '김석봉');
        buffer.write('$changedLine\n');
      } else {
        buffer.write('$line\n');
      }
    }

    File(target).writeAsStringSync(buffer.toString());
  } catch (e) {
    print(e);
  }
}

void main() async {
  await manipulateCSV(
      'lib/240321/practice/sample.csv', 'lib/240321/practice/sample_copy.csv');
}
