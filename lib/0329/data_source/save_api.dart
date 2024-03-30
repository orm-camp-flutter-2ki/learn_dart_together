import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

class SaveApi {
  Future<Uint8List> downloadImageApi(String url) async {
    // 주어진 url에서 http.get 요청, 서버로부터 응답을 기다리다가(await) 응답이 도착하면 변수 response에 할당
    final http.Response response = await http.get(Uri.parse(url));

    // response에서 bytedata 를 추출, Uint8List 형식의 변수 bodyBytes 에 저장
    Uint8List bytes = response.bodyBytes;

    return bytes;
  }

  Future<File> saveFileApi(Uint8List bytes, String fileName) async {
    // 메모리에 저장된 사진을 파일로 저장한다.

    // 이미지를 저장할 directory 경로를 변수에 할당
    // final directory = Directory('/storage/emulated/0'); // 안드로이드의 경우
    final directory = Directory('/Users/yong/Downloads'); // macOS의 경우

    try {
      if (directory.existsSync()) {
        // 외부 저장소 디렉토리가 실제로 존재하는지를 확인후, 저장하고 위치 출력
        print('다운로드 시작');
        final stopwatch = Stopwatch()..start();
        // print('다운로드 경로: ${directory.path}/$fileName'); // 다운로드 경로를 출력

        final file = File(
            '${directory.path}/$fileName'); // 저장할 디렉토리 경로에 fileName 이름으로 파일을 생성

        print(
            '다운로드 끝\n========\n소요시간 : ${stopwatch.elapsed}\n용량 : ${bytes.lengthInBytes}bytes'); // 파일 쓰기 전에 위치해야 출력 된다.

        await file.writeAsBytes(
            bytes); // 지정된 바이트 데이터(bytes)를 파일에 쓰는 것(writeAsBytes)을 기다린다(await)


        return file;
      }
      throw Exception('[Error]\n디렉토리가 존재하지 않습니다.');
    } catch (e) {
      throw Exception('[Error]\n이미지 저장에 에러가 있습니다.\n$e');
    }
  }
}
