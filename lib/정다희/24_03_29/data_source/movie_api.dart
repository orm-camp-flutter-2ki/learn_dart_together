import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_29/model/movie.dart';

import '../dto/MovieDto.dart';

class MovieApi {
  final http.Client _client;
  MovieApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<MovieDto>> getMovie() async {
    final res = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
    if (res.statusCode == 200) {
      final List resList = jsonDecode(utf8.decode(res.bodyBytes))['results'];
      return resList.map((e) => MovieDto.fromJson(e)).toList();
    } else {
      throw Exception('api 받아오다가 에러 발생');
    }
  }
}
