import 'dart:convert';

Future<Movie> getMovieInfo() async {
  // 비동기 함수 getMovieInfo 선언(이 함수는 movie 객체를 반환함)
  await Future.delayed(Duration(seconds: 2)); //2초동안 대기
  //JSON 형식의 문자열 데이터를 정의
  final String jsonString = ''' {    
    "title": "Star Word",  
    "director": "George Lucas",
    "year": 1977
  }''';

  Map<String, dynamic> json =
      jsonDecode(jsonString); //JSON 형식의 문자열을 Map으로 변환해서 json 변수에 저장
  return Movie(     // Movie 클래스의 객체 생성 후 반환
    title: json['title'], //  JSON 데이터로부터 영화 정보를 가져와서 객체를 초기화함
    director: json['director'],
    year: json['year'], //
  );
}

// 영화 정보를 담는 클래스
class Movie {
  final String title;
  final String director;
  final int year;

  // 생성자
  Movie({required this.title, required this.director, required this.year});
}

void main() async {
  // 비동기 함수 호출 후 반환값을 기다렸다가 변수에 저장
  Movie movie = await getMovieInfo();
  print('Director: ${movie.director}');
}
