import 'dart:convert';
import 'dart:async';

class Movie {
  final String title;
  final String director;
  final int year;

  Movie({required this.title, required this.director, required this.year});

  @override
  String toString() {
    return 'Movie{title: $title, director: $director, year: $year}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Movie &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          director == other.director &&
          year == other.year;

  @override
  int get hashCode => title.hashCode ^ director.hashCode ^ year.hashCode;

  // 직렬화 : toJson() 메서드
  // Map<String, dynamic> toJson() => {
  //   'title': title,
  //   'director': director,
  //   'year': year
  // };

  // 역직렬화 : fromJson() 메서드
  Movie.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        director = json['director'],
        year = json['year'];

  // deep copy를 위한 copyWith() 메서드
  Movie copyWith({
    String? title,
    String? director,
    int? year,
  }) {
    return Movie(
      title: title ?? this.title,
      director: director ?? this.director,
      year: year?? this.year,
    );
  }

}

Future<Movie> getMovieInfo() async {
  // 2초 동안 기다리는 코드
  await Future.delayed(Duration(seconds: 2));

  // 서버에서 들어오는 데이터라고 상상
  final String jsonString = '''{
    "title" : "Star Wars",
    "director": "George Lucas",
    "year": 1977
  }''';

  // Movie 데이터 클래스를 리턴하도록 작성
  Map<String, dynamic> movieJson = jsonDecode(jsonString);
  return Movie.fromJson(movieJson);
}

void main() async {
  try {
    Movie movie = await getMovieInfo(); // 영화 정보 가져오기
    print('Director: ${movie.director}'); // 감독 정보 출력
  } catch (e) {
    print('Error: $e');
  }
}
