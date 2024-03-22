import 'dart:io';

Future<void> main() async {
  try {
    await modifyCsvFile();
    print('File modification complete.');
  } catch (e) {
    print('Error: $e');
  }
}

Future<void> modifyCsvFile() async {
  // 위 함수를 실행할 때 파일을 찾을 수 없는 경우 예외 처리
  final sourcePath = 'lib/240321/sample.csv';
  final targetPath = 'lib/240321/sample_copy.csv';

  final sourceFile = File(sourcePath);
  if (!await sourceFile.exists()) {
    throw FileSystemException('File not found: $sourcePath');
  }

  String contents = await sourceFile.readAsString();
  contents = contents.replaceAll('한석봉', '김석봉');

  final targetFile = File(targetPath);
  await targetFile.writeAsString(contents);
}
