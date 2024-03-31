import 'dart:convert';
import 'package:http/http.dart' as http; // 의식하고 as http 한번 더 써주기
import '../dto/movie_dto.dart';

class MovieApi {
  Future<List<MovieDto>> getMovie() async {     //api를 전체 줌.
    final http.Response response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

    final Map<String, dynamic> json = jsonDecode(response.body);
    final List resultsJson = Json['results'];
    //=final resultsJson = json['results'] as List; (위와 같음. result값만 가져오겠다.-> 타입 변환)
    final moviesList = resultsJson.map((e) => MovieDto.fromJson(e)).toList();
    return moviesList;
  }



  Future<MovieDetail> getMovieDetail(int movieId) async {
    final http.Response response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/${movieId}?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

    final Map<String, dynamic> json = jsonDecode(response.body);
    final movieDetail = MovieDetail.fromJson(json);

    return movieDetail;
  }

