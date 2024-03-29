import 'dart:io';
import 'dart:typed_data';

import 'package:test/test.dart';

import '../../240329/photo.dart'; // 변경 필요

void main() {
  test('image Test', () async {
    final Stopwatch stopwatch = Stopwatch()..start();
    final Uint8List image =
        await downloadImage('https://alimipro.com/favicon.ico');
    final String fileName = 'icon.ico';
    final File savedFile = await saveFile(image, fileName);
    print('============');
    print('소요 시간 : ${stopwatch.elapsed}');
    print('용량 : ${await savedFile.length()} bytes');
  });
}
