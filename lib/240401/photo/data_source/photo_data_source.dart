import 'dart:convert';
import 'package:http/http.dart' as http;
import '../dto/photo_dto.dart';

class PhotoDataSource {
  final http.Client _client;
  final String _baseUrl = 'https://pixabay.com/api/?key=';
  final String _apiKey = '43166972-c31bb528bcd48c6ebc80cdd0c';

  PhotoDataSource({http.Client? client}) : _client = client ?? http.Client();

  Future<List<PhotoDto>> getPhotos(String query) async {
    final String url = '$_baseUrl$_apiKey&q=$query&image_type=photo&pretty=true';
    final http.Response response = await _client.get(Uri.parse(url));
    final List<dynamic> jsonList = jsonDecode(response.body)['hits'];
    return jsonList.map((e) => PhotoDto.fromJson(e)).toList();
  }

  Future<List<PhotoDto>> getPhotosDefault() async {
    final String url = '$_baseUrl$_apiKey&image_type=photo&pretty=true';
    final http.Response response = await _client.get(Uri.parse(url));
    final List<dynamic> jsonList = jsonDecode(response.body)['hits'];
    return jsonList.map((e) => PhotoDto.fromJson(e)).toList();
  }


}
