
import 'dart:convert';
import 'package:untitled2/240329/mapper/movie_mapper.dart';
import 'package:untitled2/240329/repository/movie_repository.dart';
import 'package:untitled2/240329/repository/movie_repository_impl.dart';
void main() async {

  MovieRepository repository = MovieRepositoryImpl();

  final movieList = await repository.getMovieInfoList();

  JsonEncoder encoder = JsonEncoder.withIndent(' ');

  final json = movieList.map((e) => e.toMovieDto()).toList();

  print(encoder.convert(json));

}