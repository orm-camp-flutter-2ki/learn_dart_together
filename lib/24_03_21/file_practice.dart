import 'dart:io';

import 'package:csv/csv.dart';

void main() {
  copyAndEditFile();
}

/// sample.csv 파일을 읽어와서 “한석봉" 이라는 문자열이 있는지 찾고, 있다면 sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성하시오.
/// (async - await 사용할 것)
void copyAndEditFile() async {
  final String currentPath = 'lib/24_03_21/';

  File file = File('${currentPath}sample.csv');
  String fileString = await file.readAsString();

  File newFile = File('${currentPath}sample_copy.csv');
  newFile.writeAsString(fileString.replaceAll('한석봉', '김석봉'));
}
