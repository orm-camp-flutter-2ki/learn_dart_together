import 'dart:convert';

Future<Movie> getMovieInfo(String jsonString) async {
  // 2초간 대기 코드
  await Future.delayed(Duration(seconds: 2));

  Movie movie = Movie.fromJson(jsonDecode(jsonString) as Map<String, dynamic>);
  // Movie('Star Ward', 'George Lucas', 1997);

  print(movie.director);
  //movie 데이터클래스를 리턴하도록 작성
  return movie;
}

class Movie {
  final String _title;
  final String _director;
  final int _year;

  Movie(this._title, this._director, this._year);

  String get title => _title;

  String get director => _director;

  int get year => _year;

  Movie copyWith({
    String? title,
    String? director,
    int? year,
  }) {
    return Movie(
      title ?? _title,
      director ?? _director,
      year ?? _year,
    );
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'director': director,
        'year': year,
      };

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      json["title"],
      json["director"],
      json['year'],
    );
  }

  @override
  String toString() {
    return 'Movie{_title: $_title, _director: $_director, _year: $_year}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Movie &&
          runtimeType == other.runtimeType &&
          _title == other.title &&
          _director == other.director &&
          _year == other.year;

  @override
  int get hashCode => title.hashCode ^ director.hashCode ^ year.hashCode;
}

// Future<void> main() async {
//   final String jsonString = '''{
//   "title": "Star Ward",
//   "director": "George Lucas",
//   "year": 1997
//   }''';
//
//   getMovieInfo(jsonString);
//
// }
