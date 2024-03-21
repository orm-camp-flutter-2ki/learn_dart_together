import 'dart:convert';
import 'dart:async';

class Movie {
  final String title;
  final String director;
  final int year;

  const Movie({required this.title, required this.director, required this.year});


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Movie &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          director == other.director &&
          year == other.year;

  @override
  int get hashCode =>
      title.hashCode ^ director.hashCode ^ year.hashCode ^ hashCode.hashCode;

  @override
  String toString() {
    return 'Movie{title: $title, director: $director, year: $year}';
  }

  Movie.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        director = json['director'],
        year = json['year']

  Future<Map<String, dynamic>> toJson() async => {
    'title': title,
    'director': director,
    'year': year,
  };

  Movie copyWith({
    String? title,
    String? director,
    int? year,
  }) {
    return Movie(
      title: title ?? this.title,
      director:director?? this.director,
      year: year ?? this.year,
    );
  }

}

Future<Movie> getMovieInfo() async {
  //TODO : 2초동안 기다리는 코드 작성 delay
  await Future.delayed(Duration(seconds: 2));

  //서버에서 들어오는 데이터라고 상상
  final String jsonString = ''' {
    "title": "Star Ward",
    "director": "George Lucas",
    "year" : 1977
  }''';
  //TODO :  Movie 데이터 클래스를 리턴하도록 작성
  final movie = Movie.fromJson(jsonDecode(jsonString));
  return movie;
}

void main() async {
  try {
    final movie = await getMovieInfo();
    print('감독: ${movie.director}');
  } catch (error) {
    print('영화 정보 가져오기 실패: $error');
  }
}