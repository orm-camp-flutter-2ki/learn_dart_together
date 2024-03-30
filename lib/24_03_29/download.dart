import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';

// 1번 요구사항: 이미지 다운로드 함수
Future<Uint8List> downloadImage(String url) async {
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return response.bodyBytes;
  } else {
    throw Exception('실패!');
  }
}

// 2번 요구사항: 메모리 저장 사진을 파일로 저장하는 함수
Future<File> saveFile(Uint8List bytes, String fileName) async {
  final path = 'C:\\Users\\pigya\\Desktop\\FLUTTER\\learn_dart_together\\out\\lib\\24_03_29';
  final file = File(join(path, fileName));
  await file.writeAsBytes(bytes);
  return file;
}

Future<void> main() async {
  try {
    // 이미지 다운
    final imageBytes = await downloadImage('https://alimipro.com/favicon.ico');
    
    // 파일로 저장
    final file = await saveFile(imageBytes, 'icon.ico');
    print('File saved: ${file.path}');
  } catch (e) {
    print(e);
  }
}
