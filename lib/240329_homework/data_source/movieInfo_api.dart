import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240329_homework/model/movieInfo.dart';

class MovieApi {
  Future<List<MovieInfo>> getMovieInfoList() async {
    final String uri =
        'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1';
    final response = await http.get(Uri.parse(uri));
    final Map<String, dynamic> data = (response.statusCode == 200)
        ? jsonDecode(response.body)
        : throw Exception('api get error');
    final List resultsData = data['results'];
    return resultsData.map((e) => MovieInfo.fromJson(e)).toList();
  }
}
