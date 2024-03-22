import 'dart:io';

void copyModify(String source) async {
  try {
    final filePath = source.replaceAll('sample.csv', '');
    final originDetail = await File(source).readAsString();
    final copyFile = File('${filePath}sample_copy.csv');

    final bool isHan = originDetail
        .replaceAll(" ", "") // 공백제거
        .split(RegExp(r'[,\r\n]')) // 잡문자 제거
        .any((element) => element == '한석봉');

    if (isHan) {
      await copyFile.writeAsString(originDetail.replaceAll('한석봉', '김석봉'));
    }
  } catch (e) {
    print('error');
  }
}

void main() {
  copyModify('lib/24_03_21/practice_1/sample.csv');
}
