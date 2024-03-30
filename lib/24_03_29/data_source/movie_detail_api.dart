import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_29/dto/movie_detail_dto.dart';

class MovieDetailApi {
  final http.Client _client;

  MovieDetailApi({http.Client? client}) : _client = client ?? http.Client();

  Future<DetailResults> getMovieDetail(int id) async {
    final http.Response response = await _client.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/$id?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

    final json =
        jsonDecode(utf8.decode(response.bodyBytes));

    return DetailResults.fromJson(json);
  }
}

void main() async {
  final movieById = await MovieDetailApi().getMovieDetail(1011985);
  print(movieById);
}
