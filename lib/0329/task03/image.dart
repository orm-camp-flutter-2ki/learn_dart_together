import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

void main() async {
  try {
    String url = 'https://alimipro.com/favicon.ico';
    Uint8List image = await downloadImage(url);

    String fileName = 'icon.ico';
    File file = await saveFile(image, fileName);
    print(file.path);

  } catch(e) {
    print(e.toString());
  }
}

Future<Uint8List> downloadImage(String url) async {
  http.Response response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return response.bodyBytes;
  } else {
    throw Exception('Request failed to download image: ${response.statusCode}.');
  }
}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  String path = 'lib/0329/image/$fileName';
  return File(path).writeAsBytes(bytes);
}