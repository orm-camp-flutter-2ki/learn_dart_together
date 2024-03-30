import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

final url = 'https://alimipro.com/favicon.ico';

Future<Uint8List> downloadImage(String url) async {
  var response = await http.get(Uri.parse(url));

  final uint8List = response.bodyBytes;
  return uint8List;
}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  final myFile = File('icon.ico');
  //Uint8List
  return myFile.writeAsBytes(bytes);
}

void main() async {
  Uint8List image = await downloadImage(url);
  saveFile(image, 'icon.ico');
}
