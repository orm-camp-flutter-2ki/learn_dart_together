import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240329/model/movie_detail.dart';
import 'package:learn_dart_together/240329/repository/movie_detail_repo.dart';
import 'package:learn_dart_together/240329/repository/movie_detail_repo_impl.dart';

class MovieDetailApi {
  Future<MovieDetail> getMovieDetail(int id) async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/${id}?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      return MovieDetail.fromJson(jsonData);
    } else {
      throw Exception('Error');
    }
  }
}

void main() async {
  MovieDetailRepository movieDetailRepo = MovieDetailRepositoryIpml();
  final result = await movieDetailRepo.getMovieDetail(1011985);
  print(result);
}
