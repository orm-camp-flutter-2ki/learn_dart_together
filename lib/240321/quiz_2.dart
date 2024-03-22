import 'dart:convert';

Future<Movie> getMovieInfo() async {

  await Future.delayed(Duration(seconds: 2)); //2초 딜레이

  final String jsonString = ''' {
  "title": "Star Ward",
  "directer": "Georgr Lucas",
  "year": 1977
  }'''; //Map 으로 만듦
  //Json이라는 것을 넣어서 돌려줌
  //2초 뒤에 데이터로 들어온다.

  Map<String, dynamic> json = jsonDecode(jsonString); //json으로 만든다.
 
  final movie = Movie(json['title'], json['directer'], json['year']);

  return movie;
}

class Movie {
  final String title;
  final String directer;
  final int year;
  //read only로 만들기 위해서 하는 것임
  //최대한 변수가 없는 코드로 만들어야 함

  Movie(this.title, this.directer, this.year); //생성자
//fromjsom안만들어도 됨



}

void main() async {
  final movie = await getMovieInfo();
  print(movie.directer);
}
