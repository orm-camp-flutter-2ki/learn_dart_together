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
  });
}