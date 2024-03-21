import 'dart:convert';

Future<Movie> getMovieInfo() async {

  await Future.delayed(Duration(seconds: 2));

  final String jsonString = ''' {
  "title": "Star Ward",
  "directer": "Georgr Lucas",
  "year": 1977
  }'''; //Map 으로 만듦

  Map<String, dynamic> json = jsonDecode(jsonString);
 
  final movie = Movie(json['title'], json['directer'], json['year']);

  return movie;
}

class Movie {
  final String title;
  final String directer;
  final int year;

  Movie(this.title, this.directer, this.year);
//fromjsom안만들어도 됨
}

void main() async {
  final movie = await getMovieInfo();
  print(movie.directer);
}
