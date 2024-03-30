import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240329/dto/movie_dto.dart';

// Movie데이터 중 result 항목만 가져오는 방식
class MovieApi {
  final _baseUrl = 'https://api.themoviedb.org';

  Future<List<MovieDto>> getMovies() async {
    final http.Response response = await http.get(Uri.parse(
        '$_baseUrl/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
    // Map<String, dynamic> 타입
    // *json데이터를 Map형태로 변환
    final Map<String, dynamic> json = jsonDecode(response.body);

    // List<dynamic> 타입
    // *results 내 정보만 가져옴. Model함수 구조
    final List resultJson = json['results'];

    // List<MovieDto>
    // *각각의 요소(e)를 MovieDto.fromJson(e)로 뺑뻉이 돌며 MovieDto로 변경
    final movieList = resultJson.map((e) => MovieDto.fromJson(e)).toList();

    return movieList;
  }
}
