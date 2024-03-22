import 'dart:io';

class FileHandle {
  final File originalFile;
  final File newPath;

  FileHandle({
    required this.originalFile,
    required this.newPath,
  });

  Future<String> findAndChangeName() async {
    // readAsLines : encoding = utf8, lines 을 읽는다.
    var lines = await originalFile.readAsLines();

    for (String line in lines) {
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FileHandle &&
          runtimeType == other.runtimeType &&
          originalFile == other.originalFile &&
          newPath == other.newPath;

  // newValue == other.newValue;

  @override
  int get hashCode => originalFile.hashCode ^ newPath.hashCode;

  FileHandle copyWith({
    File? originalFile,
    File? newPath,
  }) {
    return FileHandle(
      originalFile: originalFile ?? this.originalFile,
      newPath: newPath ?? this.newPath,
    );
  }
}
