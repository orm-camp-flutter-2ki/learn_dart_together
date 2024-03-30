import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

class IcoDownloader {
  final _baseUri = 'https://alimipro.com/favicon.ico';

  Future<Uint8List> downloadIco() async {
    Uint8List? result;
    try {
      final http.Response response = await http.get(Uri.parse(_baseUri));
      result = response.bodyBytes;
    } catch (e) {
      print(e.toString());
    }
    return result?? Uint8List(0);
  }
  Future<Uint8List> downloadImage(String uri) async {
    Uint8List? result;
    try {
      final http.Response response = await http.get(Uri.parse(uri));
      result = response.bodyBytes;
    } catch (e) {
      print(e.toString());
    }
    return result?? Uint8List(0);
  }
  Future<File> saveFile(Uint8List bytes, String fileName) async {
    File file = File('./lib/tmp/$fileName');
    file.writeAsBytesSync(bytes);
    return file;
  }
}

Future<void> main() async {
  final Stopwatch timer = Stopwatch();
  timer.start();
  IcoDownloader downloader = IcoDownloader();
  // 0:00:00.166230
  downloader.downloadIco().then((value) => downloader.saveFile(value, 'myIco.ico')).then((e) => print(timer.elapsed));
  // 0:00:01.516904
  downloader.downloadImage('https://img.freepik.com/premium-photo/sunrise-sky-ultra-high-quality-hyperrealistic-beautiful-vibrant-majestic-color-generative-ai-aig15_31965-137779.jpg').then((value) => downloader.saveFile(value, 'myImage.jpg')).then((e) => print(timer.elapsed));
}