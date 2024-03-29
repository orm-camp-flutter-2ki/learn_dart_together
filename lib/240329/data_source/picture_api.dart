import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

Future<void> synchronousPicture() async {
  PictureApi pictureApi2 = PictureApi();
  await pictureApi2.getPicture();
  PictureApi pictureApi3 = PictureApi();
  await pictureApi3.getPicture();
  PictureApi pictureApi4 = PictureApi();
  await pictureApi4.getPicture();
}

Future<void> asynchronousPicture() async {
  PictureApi pictureApi5 = PictureApi();
  pictureApi5.getPicture();
  PictureApi pictureApi6 = PictureApi();
  pictureApi6.getPicture();
  PictureApi pictureApi7 = PictureApi();
  pictureApi7.getPicture();
}

class PictureApi {
  final http.Client _client;

  PictureApi({http.Client? client}) : _client = client ?? http.Client();

  Future<void> getPicture() async {
    final response =
        await _client.get(Uri.parse('https://alimipro.com/favicon.ico'));

    File file = File('icon.ico');

    final json = response.statusCode != 200
        ? throw Exception("오류남")
        : file.writeAsBytes(response.bodyBytes);
    // print('${file.lengthSync()}');
  }
}

void main() async {
/*  final Stopwatch stopwatch = Stopwatch()..start();
  PictureApi pictureApi1 = PictureApi();
  pictureApi1.getPicture();
  stopwatch.stop();
  print('단일파일소요 시간: ${stopwatch.elapsedMilliseconds}ms');*/

  final Stopwatch stopwatch2 = Stopwatch()..start();
  await asynchronousPicture();
  stopwatch2.stop();
  print('다중파일 비동기 소요 시간: ${stopwatch2.elapsedMilliseconds}ms');

  final Stopwatch stopwatch3 = Stopwatch()..start();
  await synchronousPicture();
  stopwatch3.stop();
  print('다중파일 동기 소요 시간: ${stopwatch3.elapsedMilliseconds}ms');
}
