import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_29/dto/upcoming_movies_dto.dart';

class UpcomingMoviesApi {
  final _url =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1';

  Future<UpcomingMoviesDto> getUpcomingMovies() async {
    final http.Response response = await http.get(Uri.parse(_url));

    final json = jsonDecode(response.body);

    return UpcomingMoviesDto.fromJson(json);
  }
}
