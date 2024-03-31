import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class PictureApi {
  final http.Client _client;

  PictureApi({http.Client? client}) : _client = client ?? http.Client();

  void getPicture() async {
    final response =
    await _client.get(Uri.parse('https://alimipro.com/favicon.ico'));

    final image1 = await _client.get(Uri.parse('https://fastly.picsum.photos/id/1/5000/3333.jpg?hmac=Asv2DU3rA_5D1xSe22xZK47WEAN0wjWeFOhzd13ujW4'));
    final image2 = await _client.get(Uri.parse('https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU'));
    final image3 = await _client.get(Uri.parse('https://fastly.picsum.photos/id/2/5000/3333.jpg?hmac=_KDkqQVttXw_nM-RyJfLImIbafFrqLsuGO5YuHqD-qQ'));

    File file = File('icon.ico');

    print('다운로드 시작');

    if (response.statusCode == 200) {
      File file = File('icon.ico');
      await file.writeAsBytes(response.bodyBytes);
      print('다운로드 끝');
    } else {
      print('다운로드 실패');
    }

    if (image1.statusCode == 200 && image2.statusCode == 200 && image3.statusCode == 200) {
      final Stopwatch stopwatch = Stopwatch()..start();
      File file1 = File('image1.jpg');
      File file2 = File('image2.jpg');
      File file3 = File('image3.jpg');

      file1.writeAsBytes(image1.bodyBytes);
      file2.writeAsBytes(image2.bodyBytes);
      file3.writeAsBytes(image3.bodyBytes);
      stopwatch.stop();
      print('순차 소요 시간: ${stopwatch.elapsed}');
    }

    if (image1.statusCode == 200 && image2.statusCode == 200 && image3.statusCode == 200) {
      final Stopwatch stopwatch = Stopwatch()..start();
      File file1 = File('image1.jpg');
      File file2 = File('image2.jpg');
      File file3 = File('image3.jpg');

      await file1.writeAsBytes(image1.bodyBytes);
      await file2.writeAsBytes(image2.bodyBytes);
      await file3.writeAsBytes(image3.bodyBytes);
      stopwatch.stop();
      print('병렬 소요 시간: ${stopwatch.elapsed}');
    }

    print('============');
    print('용량 : ${file.lengthSync()}bytes');
  }
}

void main() {
  PictureApi pictureApi = PictureApi();
  pictureApi.getPicture();
}