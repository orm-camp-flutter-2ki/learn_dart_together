import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

class ImageDownloadApi {
  final http.Client _client;

  ImageDownloadApi({http.Client? client})
      : _client = client ?? http.Client();

  Future<Uint8List> downloadImage(String url) async {
    final http.Response response = await _client.get(Uri.parse(url));

    return response.bodyBytes;
  }
}
