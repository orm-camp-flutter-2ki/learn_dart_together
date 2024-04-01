import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

Future<Uint8List> download(String url) async {
  final response = await http.get(Uri.parse(url));
  return response.bodyBytes;
}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  return await File(fileName).writeAsBytes(bytes);
}

Future<File> downloadImage(String url, String fileName) async {
  return await saveFile(await download(url), fileName);
}

Future<void> checkTime(Stopwatch stopWatch, Future<File> func) async {
  stopWatch.start();
  print('다운로드 시작');
  File file = await func;
  stopWatch.stop();
  print('다운로드 끝');
  print('=========');
  print('소요시간 : ${stopWatch.elapsed.toString()}');
  print('용량 : ${await file.length()}');
  stopWatch.reset();
}

void main() async {
  // final fileNames = [
  //   'icon1.ico',
  //   'icon2.ico',
  //   'icon3.ico',
  // ];
  //
  // final stopWatch = Stopwatch();
  //
  // for (final fileName in fileNames) {
  //   await checkTime(
  //     stopWatch,
  //     downloadImage('https://alimipro.com/favicon.ico', fileName),
  //   );
  // }

  final fileNames = [
    'icon1.ico',
    'icon2.ico',
    'icon3.ico',
  ];

  final futures = [
    downloadImage('https://alimipro.com/favicon.ico', 'icon1.ico'),
    downloadImage('https://alimipro.com/favicon.ico', 'icon2.ico'),
    downloadImage('https://alimipro.com/favicon.ico', 'icon3.ico'),
  ];

  final stopWatch = Stopwatch();

  stopWatch.start();
  print('다운로드 시작');
  await Future.wait(futures);
  stopWatch.stop();
  print('다운로드 끝');
  print('=========');
  print('소요시간 : ${stopWatch.elapsed.toString()}');
  stopWatch.reset();
}
