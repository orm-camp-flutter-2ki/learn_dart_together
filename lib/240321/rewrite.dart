import 'dart:io';

Future<void> reWrite(String source, String target) async {
  try {
    File sample = File(source);
    File sampleCopy = File(target);
    String data = await sample.readAsString();
    await sampleCopy.writeAsString(data.replaceAll('한석봉', '김석봉'));
  } catch (e) {
    print('파일을 찾을 수 없습니다.');
  }
}
