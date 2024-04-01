import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_04_01/dto/results_dto.dart';

class ResultsApi {
  final _key = '43170943-e45c9b7159f8d7bc72ec9892f';
  final _url = 'https://pixabay.com/api/?key=';

  Future<ResultsDto> getResults(String query) async {
    // \를 넣어주지 않으면 제대로 동작하지 않는다.
    final replaced = query.replaceAll(' ', '\+');

    final http.Response response =
        await http.get(Uri.parse('$_url$_key&q=$replaced&image_type=photo'));

    final json = jsonDecode(response.body);

    return ResultsDto.fromJson(json);
  }
}
