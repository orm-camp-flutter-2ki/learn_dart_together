import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

class PhotoApi {
  final http.Client _client;
  //final baseUrl = 'https://alimipro.com/favicon.ico';
  PhotoApi({http.Client? client}) : _client = client ?? http.Client();

  Future<Uint8List> downloadImage(String url) async {
    final response = await _client.get(Uri.parse(url)).onError((error, stackTrace) => throw Exception('Error:$error'));
    final uint8list = response.statusCode == 200 ? (response.bodyBytes) : throw Exception('statusCode:${response.statusCode}');

    return uint8list;
  }

  Future<File> saveFile(Uint8List bytes, String fileName) async {
    File file = await File('lib/240329/image/$fileName').create();
    file.writeAsBytes(bytes);
    return file;
  }
}
