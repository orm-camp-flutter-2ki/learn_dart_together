import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

Future<Uint8List> downloadImage(String url) async {
  final http.Response response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    print('다운로드 시작');
    final Uint8List image = response.bodyBytes;
    print('다운로드 끝');
    return image;
  } else {
    throw Exception('다운로드 실패 ');
  }
}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  final String filePath = 'lib/test/240329/$fileName';
  final File file = File(filePath);
  await file.create();
  final save = await file.writeAsBytes(bytes);
  return save;
}
