import 'dart:io';

void main() async {
  String fileName = '/Users/leeseowoo/git/learn_dart_together/lib/0321/sample.csv';
  List<String> readFileData =  await readFile(fileName);

  String targetData = '한석봉';
  String newData = '김석봉';
  List<String> modifiedData = await modifyData(readFileData, targetData, newData);

  String newFileName = '/Users/leeseowoo/git/learn_dart_together/lib/0321/sample_copy.csv';
  copyFile(newFileName, modifiedData);
}

Future<List<String>> readFile(String fileName) async {
  File file = File(fileName);
  List<String> fileDataList = [];

  try {
    fileDataList = await file.readAsLines();

  } on PathNotFoundException {
    print('파일을 찾을 수 없습니다.');

  } catch(e, s) {
    print(e.toString());
    print(s.toString());
  }

  return fileDataList;
}

Future<List<String>> modifyData(List<String> fileData, String targetData, String newData) async {
  return fileData.map((e) => e.replaceFirst(targetData, newData)).toList();
}

void copyFile(String fileName, List<String> fileData) async {
  File file = File(fileName);
  IOSink sink = file.openWrite(mode: FileMode.writeOnly);

  for (String line in fileData) {
    sink.writeln(line);
  }

  await sink.flush();
  await sink.close();
}
