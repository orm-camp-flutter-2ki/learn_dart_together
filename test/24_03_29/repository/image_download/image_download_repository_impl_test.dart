import 'dart:io';
import 'dart:typed_data';

import 'package:learn_dart_together/24_03_29/data_source/image_download_api.dart';
import 'package:learn_dart_together/24_03_29/repository/image_download/image_download_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  group('image download test', () {
    final String imageUrl = "https://alimipro.com/favicon.ico";
    final String path = "./assets/images";
    final String fileName = "icon.ico";

    test('saveFile 메서드 테스트',() async {
        final Uint8List bytes = await ImageDownloadApi().downloadImage(imageUrl);
        await ImageDownloadRepositoryImpl().saveFile(bytes, fileName, path);
    });

    test('saveFile 다운로드 시간', () async {
      final stopwatch = Stopwatch()..start();
      print('다운로드 시작');
      final Uint8List bytes = await ImageDownloadApi().downloadImage(imageUrl);
      final File file = await ImageDownloadRepositoryImpl().saveFile(bytes, "icon2.ico", path);
      print('다운로드 끝');
      print('=========');
      print('소요시간 : ${stopwatch.elapsed}');
      print('용량 : ${file.lengthSync()}');
    });
  });
}