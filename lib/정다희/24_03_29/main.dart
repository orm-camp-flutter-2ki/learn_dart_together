import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

class ImgDown {
  Future<Uint8List> downloadImage(String url) async {
    final img = await http.get(Uri.parse(url));
    if (img.statusCode == 200) {
      return img.bodyBytes;
    } else {
      throw Exception('api 받아오는 중 에러');
    }
    print(img);
  }

  Future<File> saveFile(Uint8List bytes, String fileName) async {
    final makeFile = File(fileName);

    makeFile.writeAsBytesSync(bytes);
    return makeFile;
  }
}

void main() async {
  ImgDown imgDown = ImgDown();
  try {
    final image =
        await imgDown.downloadImage('https://alimipro.com/favicon.ico');
    print('이미지 다운로드 성공');
    await imgDown.saveFile(image, 'image.png');
  } catch (e) {
    print(e);
  }
}
