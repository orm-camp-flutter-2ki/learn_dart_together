import 'dart:io';

void main() {
  final file = File('lib/240321_homework/sample.csv');
  final copyFile = File('lib/240321_homework/sample_copy.csv');
  copy(file, copyFile);
  modifyName(file, copyFile);
}

Future<void> copy(File file, File copyFile) async {
  try {
    await copyFile.writeAsString(await file.readAsString());
    //await이 맨앞에도 붙어야 하는 이유!
    //1.writeAsString & readAsString future타입이기 때문에
    //2.지금은 리턴 값이 void 라서 안터지지만, 리턴값이 있다면 터질것이다!
    //3.Why? 끝나는 시점을 모르니 main함수가 끝나버리면 강제로 종료되기때문
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
