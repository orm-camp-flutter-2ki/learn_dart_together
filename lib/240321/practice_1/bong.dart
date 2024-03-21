import 'dart:io';

void main() async {
  // findBong();
}

class FileHandle {

  File originalFile;
  File newPath;
  List<String>? newValue;

  FileHandle(this.originalFile, this.newPath);



  Future<String> findAndChangeName() async {
    // readAsLines : encoding = utf8, lines 을 읽는다.
    var lines = await originalFile.readAsLines();

    for(String line in lines) {
      if (line.contains('한석봉')) {
        newPath.writeAsString(lines.join('\n').replaceAll('한석봉', '김석봉'));
        return '이름이 변경되었습니다.';
      }
    }
    return '수정할 이름이 없습니다.';
  }


  @override
  String toString() {
    return 'FileHandle{originalFile: $originalFile, newPath: $newPath}';
  }
}