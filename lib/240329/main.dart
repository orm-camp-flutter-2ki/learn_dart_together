import 'dart:convert';

import 'package:dart_cli_practice/240329/mapper/movie_mapper.dart';
import 'package:dart_cli_practice/240329/repository/movie_repository.dart';
import 'package:dart_cli_practice/240329/repository/movie_repository_impl.dart';

void main() async {
  // 다형성을 이용함
  MovieRepository repository = MovieRepositoryImpl();

  final movieList = await repository.getMovieInfoList();

  JsonEncoder encoder = JsonEncoder.withIndent(' ');

  final json = movieList.map((e) => e.toMovieDto()).toList();

  print(encoder.convert(json));
}
