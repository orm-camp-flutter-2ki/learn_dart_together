import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

void main() async {
  Uint8List uint8list = await downloadImage('https://alimipro.com/favicon.ico');
  await saveFile(bytes: uint8list, path: 'lib/240329', fileName: 'icon.ico');
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
// Uint8List 바이트 데이터를 표현하는데 사용
//  이미지 데이터를 다루기 위해서 사용
// 바이트 단위의 이진 데이터를 효과적으로 저장하고 처리하기 위한 데이터 타입
