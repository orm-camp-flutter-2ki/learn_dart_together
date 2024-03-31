import 'dart:io';
import 'dart:typed_data';

import 'package:learn_dart_together/orm_240329/03_model/photodown.dart';
import 'package:test/test.dart';

void main() {
  String imageUrl = 'https://alimipro.com/favicon.ico';
  String fileName = 'icon.ico';
  test('다운로드 테스트', () async {
    final Uint8List uint8list = await PhotoDownload().downloadImage(imageUrl);
    PhotoDownload().saveImageToFile(uint8list, fileName);

    File file = File(
        'C:/Users/USER/StudioProjects/learn_dart_together/lib/orm_240329/hw/icon.co');
    final save = file.readAsBytesSync();

    expect(uint8list == save, true); // 검사 방법을 잘 모르겠다..
  });
}
