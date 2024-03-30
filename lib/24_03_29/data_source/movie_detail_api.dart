import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_29/dto/movie_detail_dto.dart';

class MovieDetailApi {
  final _url = 'https://api.themoviedb.org/3/movie';

  Future<MovieDetailDto> getMovieDetail(int movieId) async {
    final http.Response response = await http.get(Uri.parse(
        '$_url/$movieId?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
    //
    final json = jsonDecode(response.body);

    return MovieDetailDto.fromJson(json);
  }
}
