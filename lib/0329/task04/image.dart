import 'dart:io';
import 'dart:typed_data';
import '../task03/image.dart';

void main() async {
  String url = 'https://alimipro.com/favicon.ico';
  Stopwatch stopwatch = Stopwatch();

  print('다운로드 시작');
  stopwatch.start();

  Uint8List image = await downloadImage(url);

  stopwatch.stop();
  print('다운로드 끝');

  print('=========');
  print('소요시간: ${stopwatch.elapsed}');

  File file = File('lib/0329/task03/icon.ico');
  FileStat stat = await file.stat();
  print('용량: ${stat.size}bytes');
}