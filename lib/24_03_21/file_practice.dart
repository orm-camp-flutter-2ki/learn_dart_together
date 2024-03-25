import 'dart:async';
import 'dart:io';

void main() {
  copyAndEditFile();
}

/// sample.csv 파일을 읽어와서 “한석봉" 이라는 문자열이 있는지 찾고, 있다면 sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성하시오.
/// (async - await 사용할 것)
Future<void> copyAndEditFile({String? originPath, String? copyPath}) async {
  final String path = 'lib/24_03_21/';
  final String fileString;

  try {
    File file = File('${originPath ?? path}sample.csv');
    fileString = await file.readAsString();
  } catch (e) {
    print('$e 파일을 찾을 수 없습니다.');
    return;
  }

  File newFile = File('${copyPath ?? path}sample_copy.csv');
  newFile.writeAsString(fileString.replaceAll('한석봉', '김석봉'));
}
