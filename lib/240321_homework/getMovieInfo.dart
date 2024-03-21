import 'dart:convert';

void main() {
  getMovieInfo();
}

Future<Movie> getMovieInfo() async {
  //TODO: 2초동안 기다리는 코드 작성
  //Future.delayed(const Duration(seconds: 2));

  //서버에서 들어오는 데이터라고 상상
  final String jsonstring = '''{
  "title": "Star Ward",
  "director": "George Lucas",
  "year": 1977
  }''';

  Map<String, dynamic> dataMap = json.decode(jsonstring);

  //to jason
//TODO: Movie 데이터 클래스를 리턴하도록 작성
  return
}

