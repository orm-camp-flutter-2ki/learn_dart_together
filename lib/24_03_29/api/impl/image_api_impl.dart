import 'dart:typed_data';

import 'package:learn_dart_together/24_03_25/http_proxy.dart';
import 'package:learn_dart_together/24_03_29/api/interface/image_api.dart';

class ImageApiImpl implements ImageApi {
  final HttpProxy _http;

  ImageApiImpl({required HttpProxy http}) : _http = http;

  @override
  Future<Uint8List> getImage(String url) async {
    final response = await _http.get(Uri.parse(url));

    return response.bodyBytes;
  }
}
