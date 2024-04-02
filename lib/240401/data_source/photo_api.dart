import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240401/dto/photo_dto.dart';
import 'package:learn_dart_together/240401/mapper/photo_mapper.dart';
import 'package:learn_dart_together/240401/model/photo/photo.dart';

class PhotoApi {
  final http.Client _client;
  final baseUrl = 'https://pixabay.com/api/?key=36206009-fe028570b3c99a317c543088c';
  PhotoApi({http.Client? client}) : _client = client ?? http.Client();

  Future<Photo> getPhotos(String query) async {
    final String q = query.split(' ').join('+');
    final response = await _client.get(Uri.parse('$baseUrl&q=$q&image_type=photo')).onError((error, stackTrace) => throw Exception('Error:$error'));

    final json = response.statusCode == 200 ? jsonDecode((response.body)) : throw Exception('statusCode:${response.statusCode}');

    final photos = PhotoDto.fromJson(json).toPhoto();

    return photos;
  }
}
