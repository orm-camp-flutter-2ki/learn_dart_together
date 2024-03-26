import 'dart:io';
import 'dart:core';

void main() async {
  final myFile = File('sample.csv');
  final copiedFile = File('sample._copy.csv');
  myFile.writeAsStringSync('1, 홍길동, 30\n2, 한석봉, 20');

  String context = await myFile.readAsString(); // Future 앞에 await 써줘야한다.

  String changedContext =
      context.replaceAll('한석봉', '김석봉');
  copiedFile.writeAsString(changedContext);

}
