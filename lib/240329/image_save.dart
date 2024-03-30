import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

Future<Uint8List> downloadImage(String url) async {
  return await http.readBytes(Uri.parse(url));
}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  final basePath = 'asset/';
  return await File('$basePath$fileName').writeAsBytes(bytes);
}

void main() async {
  final Uint8List imageBytes =
      await downloadImage('https://alimipro.com/favicon.ico');
  saveFile(imageBytes, 'favicon.ico');
}
