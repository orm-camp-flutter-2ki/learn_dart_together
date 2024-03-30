import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240329/model/movie_info.dart';
import 'package:learn_dart_together/240329/repository/movie_info_repo.dart';
import 'package:learn_dart_together/240329/repository/movie_info_repo_impl.dart';

class MovieInfoApi {
  Future<List<MovieInfo>> getMovieInfoList() async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      final List<dynamic> results = jsonData['results'];
      return results.map((json) => MovieInfo.fromJson(json)).toList();
    } else {
      throw Exception('Error');
    }
  }
}

void main() async {
  MovieRepository movieRepo = MovieRepositoryImpl();
  final result = await movieRepo.getMovieInfoList();
  print(result);
}
