import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_29/dto/move_info_dto.dart';

class MovieInfoApi {
  final http.Client _client;

  MovieInfoApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<ResultsDto>> getResultDtoList() async {
    final response = await _client.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
    final jsonString = jsonDecode(response.body);
    final MovieInfoDto movieInfoDto = MovieInfoDto.fromJson(jsonString);
    final List<ResultsDto> resultsDto = movieInfoDto.results ?? [];

    return resultsDto;
  }
}
