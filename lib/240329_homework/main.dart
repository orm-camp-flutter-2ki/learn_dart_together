import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

void main() async {
  await downloadImage('https://alimipro.com/favicon.ico');
  await saveFile(await downloadImage('https://alimipro.com/favicon.ico'),
      'lib/240329_homework/icon.ico');
}

Future<Uint8List> downloadImage(String url) async {
  final response = await http.get(Uri.parse(url));

  final Uint8List image = response.bodyBytes;
  return image;
}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  return await File(fileName).writeAsBytes(bytes);
}
