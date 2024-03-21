import 'dart:io';

void main() {
  final file = File('lib/240321_homework/sample.csv');
  final copyFile = File('lib/240321_homework/sample_copy.csv');
  copy(file, copyFile);
  modifyName(file, copyFile);
}

Future<void> copy(File file, File copyFile) async {
  try {
    copyFile.writeAsString(await file.readAsString());
    //await copyFile.writeAsString(await file.readAsString()); 앞에도 붙여야 하는지??
  } catch (e) {
    print('파일이 없습니다.');
  }
}

Future<void> modifyName(File file, File copyFile) async {
  copyFile.writeAsString((await file.readAsString()).replaceAll('한석봉', '김석봉'));
}
// 알아낸것
//final read = await file.readAsString();이랗게 쓰고 read.contains()~~ 라고 작성했는데
//(await file.readAsString()).contains 라고 우선순위를 매겨주면 작동한다.
