import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/orm_240401/data_resource/photo_api.dart';
import 'package:learn_dart_together/orm_240401/dto/photo_dto.dart';

class PhotoApiImpl implements PhotoApi {
  final http.Client _client;

  PhotoApiImpl({http.Client? client}) : _client = client ?? http.Client();

  final String _urlBase = 'https://pixabay.com/api/?key=';
  final String _key = '43171013-2e645214e257431880726c2d5&q';
  final String _imageType = '&image_type=photo';

  @override
  Future<List<PhotoDto>> getPhotosApi(String query) async {
    try {
      final http.Response response =
          await _client.get(Uri.parse('$_urlBase/$_key&q=$query$_imageType'));

      if (response.statusCode == 200) {
        Map<String, dynamic> json =
            await jsonDecode(utf8.decode(response.bodyBytes));

        List jsonList = json['hits'];

        return jsonList.map((e) => PhotoDto.fromJson(e)).toList();
      } else {
        throw Exception(
            'networkError\n${response.statusCode} ${response.reasonPhrase}');
      }
    } catch (error) {
      throw Exception('unknownError\n$error');
    }
  }
}
