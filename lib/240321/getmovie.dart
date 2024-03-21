import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
Future<Movie> getMovieInFo() async {
  // 2초 기다리는 코드 작성
  await Future.delayed(Duration(seconds: 2));

  // 서버에 들어오는 데이터
  final String jsonString = '''{
    "title" : "Star Ward",
    "director" : "George Lucas",
    "year" : 1977
  }''';

  // 무비 데이터 클래스를 리턴
  return Movie.fromJson(jsonDecode(jsonString));
}

class Movie {
  String title;
  String director;
  int year;

  Movie({
    required this.title,
    required this.director,
    required this.year,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'title': title,
      'director': director,
      'year': year,
    };
  }

  Movie.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        director = json['director'],
        year = json['year'];

  @override
  bool operator ==(covariant Movie other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.director == director &&
        other.year == year;
  }

  @override
  int get hashCode => title.hashCode ^ director.hashCode ^ year.hashCode;

  Movie copyWith({
    String? title,
    String? director,
    int? year,
  }) {
    return Movie(
      title: title ?? this.title,
      director: director ?? this.director,
      year: year ?? this.year,
    );
  }

  @override
  String toString() => 'Movie(title: $title, director: $director, year: $year)';
}
