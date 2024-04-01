import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_04_01/dto/picture_dto.dart';
import 'package:learn_dart_together/24_04_01/result/result.dart';

class PictureApi {
  final http.Client _client;
  final String _baseUrl = 'https://pixabay.com/api/?';
  final String _token = '43170860-66dd05200f7c3fa131b59ca03';

  PictureApi({http.Client? client}) : _client = client ?? http.Client();

  Future<Result<List<HitsDto>, int>> getPicturesDto(String query) async {
    final uri = '${_baseUrl}key=$_token&q=$query&image_type=photo';
    final http.Response response = await _client
        .get(Uri.parse(uri));

    if (response.statusCode != 200) {
      return Result.error(response.statusCode);
    }

    final jsonString = jsonDecode(response.body);
    final jsonList = jsonString['hits'] as List;
    final List<HitsDto> data =
        jsonList.map((e) => HitsDto.fromJson(e)).toList();

    return Result.success(data);
  }
}
