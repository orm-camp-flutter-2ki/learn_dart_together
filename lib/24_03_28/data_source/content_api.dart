import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_28/dto/Content_dto.dart';

class ContentApi {
  final http.Client _client;
  
  ContentApi({http.Client? client}) : _client = client ?? http.Client();
  
  Future<List<ContentDto>> getContentList() async {
    final http.Response response = await _client.get(Uri.parse('fakeUri'));
    final List jsonList = jsonDecode(response.body) as List;

    final List<ContentDto> dtoList = jsonList.map((e) => ContentDto.fromJson(e)).toList();

    return dtoList;
  }
}