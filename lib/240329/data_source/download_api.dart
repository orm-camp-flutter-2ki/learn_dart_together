import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

class DownloadApi {
  Future<Uint8List> downloadImage(String url) async {
    final response = await http.get(Uri.parse(url));

    if( response.statusCode == 200 ) {
      return response.bodyBytes;
    } else {
      throw Exception('다운로드 실패: HTTP Status Code ${response.statusCode}');
    }
  }

  Future<File> saveFile(Uint8List bytes, String fileName) async {
    final file = File(fileName);
    await file.writeAsBytes(bytes);
    return file;
  }

  void deleteFile(String path) {
    File(path).deleteSync();
  }
}

void main() async {
  final file = await DownloadApi().saveFile(
      await DownloadApi().downloadImage('https://alimipro.com/favicon.ico'), 'assets/images/icon.ico');
  print('파일이 저장되었습니다: ${file.path}');
}