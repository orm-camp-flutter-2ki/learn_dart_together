import 'dart:convert';

import 'package:dart_cli_practice/240329/mapper/movie_mapper.dart';
import 'package:dart_cli_practice/240329/repository/movie_repository.dart';
import 'package:dart_cli_practice/240329/repository/movie_repository_impl.dart';

void main() async {
  JsonEncoder encoder = JsonEncoder.withIndent(' ');

  // 다형성을 이용함
  MovieRepository repository = MovieRepositoryImpl();

  // 연습문제 1
  final movieList = await repository.getMovieInfoList(); // json -> movie
  final movieListDto =
      movieList.map((e) => e.toMovieDto()).toList(); // movie -> json
  final movieListJsonString = encoder.convert(movieListDto);

  print(movieListJsonString.runtimeType); // String
  print(movieListJsonString); // pretty-print json string

  // 연습문제 2
  final movieDetail = await repository.getMovieDetail(1011985);
  final movieDetailJson = movieDetail.toJson();
  print(encoder.convert(movieDetailJson));
}
