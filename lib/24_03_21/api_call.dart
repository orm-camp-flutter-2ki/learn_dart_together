import 'dart:convert';

Future<Movie> getMovieInfo() async {
  Future.delayed(Duration(seconds: 2));

  final String jsonString = '''{
  "title": "Star Ward",
  "director": "George Lucas",
  "year": 1977
  }''';

  return Movie.fromJson(jsonDecode(jsonString));
}

class Movie {
  final String _title;
  final String _director;
  final int _year;

  Movie(this._title, this._director, this._year);

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

  Movie.fromJson(Map<String, dynamic> json)
      : _title = json['title'],
        _director = json['director'],
        _year = json['year'];

  Map<String, dynamic> toJson() => {
        'title': _title,
        'director': _director,
        'year': _year,
      };

  @override
  String toString() {
    return 'Movie{_title: $_title, _director: $_director, _year: $_year}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Movie &&
          runtimeType == other.runtimeType &&
          _title == other._title &&
          _director == other._director &&
          _year == other._year;

  @override
  int get hashCode => _title.hashCode ^ _director.hashCode ^ _year.hashCode;
}

void main() async{
  Movie m = await getMovieInfo();
  print(m._director);
}