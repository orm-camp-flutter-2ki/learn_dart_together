import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

Future<Uint8List> downloadImage(String url) async {
  final response = await http.get(Uri.parse(url));
  return response.bodyBytes;
}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  return await File(fileName).writeAsBytes(bytes);
}

void main() async {
  final stopWatch = Stopwatch()..start();

  print('다운로드 시작');
  final Uint8List bytes =
      await downloadImage('https://alimipro.com/favicon.ico');
  final File file = await saveFile(bytes, 'icon.ico');
  stopWatch.stop();
  print('다운로드 끝');
  print('=========');
  print('소요시간 : ${stopWatch.elapsed.toString()}');
  print('용량 : ${await file.length()}');
}
