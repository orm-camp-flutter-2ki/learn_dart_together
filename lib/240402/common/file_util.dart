import 'dart:io';

class FileUtil {
  final String _path;

  FileUtil(this._path);

  Future<String> readAsString() async {
    File file = File(_path);

    return await file.readAsString();
  }

  Future<List<String>> readAsLineString() async {
    File file = File(_path);

    return await file.readAsLines();
  }

  Future<void> write(String contents) async {
    File file = File(_path);
    await file.writeAsString(contents);
  }
}
