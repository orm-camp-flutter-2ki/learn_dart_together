import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

void main() async {
  Stopwatch stopwatch = Stopwatch();
  stopwatch.start();
  Uint8List uint8list = await downloadImage('https://alimipro.com/favicon.ico');
  File file = await saveFile(
      bytes: uint8list, path: 'lib/24_03_29', fileName: 'icon.ico');
  int fileLength = await file.length();
  print('======');
  print('소요시간 : ${stopwatch.elapsed}');
  print('용량 : $fileLength bytes');
  stopwatch.stop();
}

Future<Uint8List> downloadImage(String url) async {
  print('다운로드 시작');
  final http.Response response = await http.get(Uri.parse(url)).whenComplete(
        () => print('다운로드 끝'),
      );

  return response.bodyBytes;
}

Future<File> saveFile({
  required Uint8List bytes,
  required String path,
  String? fileName,
}) async {
  File file = File('$path/$fileName');
  await file.writeAsBytes(bytes);

  return file;
}
