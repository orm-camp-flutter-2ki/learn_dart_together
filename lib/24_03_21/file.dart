import 'dart:io';

Future find() async{
  try {
    final file = File('sample.csv');
    if (await file.exists()) {
      final lines = await file.readAsLines();

      final modifiedLines = lines.map((e) => e.replaceAll('한석봉', '김석봉')).toList();

      final modifiedFile = File('sample_copy.csv');
      await modifiedFile.writeAsString(modifiedLines.join('\n'));
      print('김씨로 바뀌었다');
    } else {
      print('파일을 찾을 수 없습니다.');
    }
  } catch (e) {
    print('오류 발생');
  }
}

Future main() async{
  await find();
}