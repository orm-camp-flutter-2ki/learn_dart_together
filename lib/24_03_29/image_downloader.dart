import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

class ImageDownloader {
  Future<Uint8List> downloadImage(String url) async {
    final http.Response response = await http.get(Uri.parse(url));

    return response.bodyBytes;
  }

  Future<File> saveFile(Uint8List bytes, String fileName) async {
    final file =
        await File('lib/24_03_29/images/$fileName').writeAsBytes(bytes);

    return file;
  }
}

void main() async {
  final stopwatch = Stopwatch()..start();

  final imageDownloader = ImageDownloader();

  final url = 'https://alimipro.com/favicon.ico';

  final image = await imageDownloader.downloadImage(url);

  await imageDownloader.saveFile(image, 'icon.ico');

  //연습문제 4.
  print(stopwatch.elapsed);
  print('${image.length}bytes');
}
