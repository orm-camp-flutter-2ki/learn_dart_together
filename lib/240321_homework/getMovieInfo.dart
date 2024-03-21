import 'dart:convert';

void main() async {
  print((await getMovieInfo()).director);
}

Future<Movie> getMovieInfo() async {
  //TODO: 2초동안 기다리는 코드 작성
  //Future.delayed(const Duration(seconds: 2));
  Movie movie;
  //서버에서 들어오는 데이터라고 상상
  final String jsonstring = '''{
  "title": "Star Ward",
  "director": "George Lucas",
  "year": 1977
  }''';

  Map<String, dynamic> dataMap =  jsonDecode(jsonstring);

  //to jason
//TODO: Movie 데이터 클래스를 리턴하도록 작성
  return movie = Movie(dataMap['title'], dataMap['director'], dataMap['year']);
}

class Movie {
  String title;
  String director;
  int year;

  Movie(this.title, this.director, this.year);

  // Movie.fromJson(Map<String, dynamic> json)
  //     : title = json['title'],
  //       director = json['director'],
  //       year = json['year'];
}
