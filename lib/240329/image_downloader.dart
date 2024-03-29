import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

class ImageDownloader {
  Future<Uint8List> downloadImage(String url) async {
    final response = await http.get(Uri.parse(url))
        .onError((error, stackTrace) => throw Exception(error));

    return response.bodyBytes;
  }

  Future<File> saveFile(Uint8List bytes, String fileName) async {
    final file = File('test/240329/$fileName').writeAsBytes(bytes);

    return file;
  }
}