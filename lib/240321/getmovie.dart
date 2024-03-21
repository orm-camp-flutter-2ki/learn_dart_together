import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
Future<Movie> getMovieInFo() {
  // 2초 기다리는 코드 작성
  Future.delayed(Duration(seconds: 2));

  // 서버에 들어오는 데이터
  final String jsonString = '''{
    "title" : "Star Ward"
    "director" : "George Lucas",
    "year" : 1977
  }''';

  // 무비 데이터 클래스를 리턴
  return jsonDecode(jsonString);
}

class Movie {
  String _title;
  String _director;
  int _year;

  Movie({
    required String title,
    required String director,
    required int year,
  })  : _title = title,
        _director = director,
        _year = year;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      '_title': _title,
      '_director': _director,
      '_year': _year,
    };
  }

  Movie.fromMap(Map<String, dynamic> json)
      : _title = json['title'],
        _director = json['_director'],
        _year = json['_year'];
}

void main() {
  getMovieInFo();
}
