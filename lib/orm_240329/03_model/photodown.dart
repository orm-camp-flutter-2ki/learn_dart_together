import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

class PhotoDownload {
  Future<Uint8List> downloadImage(String url) async {
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return response.bodyBytes;
      } else {
        throw Exception('Failed to load image: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load image: $e');
    }
  }

  Future<void> saveImageToFile(Uint8List imageBytes, String filePath) async {
    try {
      File file = File(
          'C:/Users/USER/StudioProjects/learn_dart_together/lib/orm_240329/hw/$filePath');
      await file.writeAsBytes(imageBytes);
      print('이미지가 저장되었습니다: $filePath');
    } catch (e) {
      print('이미지를 저장하는 동안 오류가 발생했습니다: $e');
    }
  }
}

// void main() async {
//   String imageUrl = 'https://alimipro.com/favicon.ico';
//   String fileName = 'icon.ico';
//
//   try {
//     Uint8List imageBytes = await downloadImage(imageUrl);
//     await saveImageToFile(imageBytes, fileName);
//   } catch (e) {
//     print('오류 발생: $e');
//   }
// }
