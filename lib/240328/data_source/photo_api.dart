import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240328/dto/photo/photo_dto.dart';

class PhotoApi {
  final http.Client _client;

  PhotoApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<PhotoDto>> getPhotos() async {
    List jsonList = jsonDecode(await File('lib/240328/data_source/photo.json').readAsString());

    return jsonList.map((e) => PhotoDto.fromJson(e)).toList();
  }
}