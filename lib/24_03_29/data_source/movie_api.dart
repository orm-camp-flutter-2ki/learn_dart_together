import 'dart:convert';

import '../dto/movie_dto.dart';
import 'package:http/http.dart' as http;

class MovieApi {
  final http.Client _client;

  final _baseUrl =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1';

  MovieApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<Results>> getMovieInfoList() async {
    final http.Response response = await _client.get(Uri.parse(_baseUrl));

    List<Results> results = [];
    if (response.statusCode == 200) {
      final json = jsonDecode(utf8.decode(response.bodyBytes));
      final jsonList = json['results'] as List;

      results = jsonList.map((e) => Results.fromJson(e)).toList();
    } else {
      throw Exception('네트워크 발생했습니다.');
    }
    return results;
  }
}

void main() {

}