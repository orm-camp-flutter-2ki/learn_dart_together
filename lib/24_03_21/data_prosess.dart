import 'dart:async';
import 'movie.dart';

Future<Movie> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));
  // 2초동안 기다리는 코드

  // 서버에서 들어오는 데이터
  final Map<String, dynamic> json = {
    "title": "Star Ward",
    "director": "George Lucas",
    "year": 1977,
  };

  // Movie 데이터 클래스를 리턴
  return Movie(
    title: json['title'],
    director: json['director'],
    year: json['year'],
  );
}

void main() async {
  Movie movie = await getMovieInfo();
  // 2초동안 기다리고
  print("Director: ${movie.director}");
  // director 출력
}
