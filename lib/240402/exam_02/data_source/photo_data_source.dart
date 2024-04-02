import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/photo_result_dto.dart';

class PhotoDataSource {
  Future<PhotoResultDto> getPhotos(String query) async {
    final response = await http.get(Uri.parse(
        'https://pixabay.com/api/?key=10711147-dc41758b93b263957026bdadb&q=$query&image_type=photo'));

    return PhotoResultDto.fromJson(jsonDecode(response.body));
  }
}
