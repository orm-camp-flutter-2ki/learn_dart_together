import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

void main() async {
  print('다운로드 시작');
  final Stopwatch stopwatch = Stopwatch()..start();
  final file = await saveFile(
      await downloadImage('https://alimipro.com/favicon.ico'), 'icon.ico');
  print('다운로드 끝');
  print('=========');
  print('소요시간 : ${stopwatch.elapsed}');
  print('용량 : ${await file.length()}bytes');
}

Future<Uint8List> downloadImage(String url) async {
  final response = await http.get(Uri.parse(url));
  return response.bodyBytes;
}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  final file = File(fileName);
  await file.writeAsBytes(bytes);
  return file;
}