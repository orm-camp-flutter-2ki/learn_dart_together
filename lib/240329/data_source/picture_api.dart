import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class PictureApi {
  final http.Client _client;

  PictureApi({http.Client? client}) : _client = client ?? http.Client();

  void getPicture() async {
    final response =
        await _client.get(Uri.parse('https://alimipro.com/favicon.ico'));

    File file = File('icon.ico');

/*    print(file.length());
    print(file.lengthSync());*/

    final json = response.statusCode != 200
        ? throw Exception("오류남")
        : file.writeAsBytes(response.bodyBytes);
  }
}

void main() {
  PictureApi pictureApi = PictureApi();
  pictureApi.getPicture();
  print("");
}
