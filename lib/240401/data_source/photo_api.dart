import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240401/dto/photo_dto.dart';

class PhotoApi {
  final http.Client _client;

  PhotoApi({http.Client? client}) : _client = client ?? http.Client();

  String _apiKey = '43170937-35ceae03e0e74c862a69ffff8';
  String _query = '';

  Future<List<HitsDto>> getPhotos(String query) async {
    final http.Response response = await _client.get(Uri.parse(
        'https://pixabay.com/api/?key=$_apiKey&q=${query}&image_type=photo&pretty=true'));

    final Map<String, dynamic> json = response.statusCode != 200
        ? throw Exception("오류남")
        : jsonDecode(utf8.decode(response.bodyBytes));
    final jsonList = json['hits'] as List;
    return jsonList.map((e) => HitsDto.fromJson(e)).toList();
  }
}
