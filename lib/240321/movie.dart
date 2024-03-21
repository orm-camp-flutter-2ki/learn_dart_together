import 'dart:convert';

class Movie {
  String title;
  String director;
  int year;

  Movie(this.title, this.director, this.year);

  Movie.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        director = json['director'],
        year = json['year'];

  Map<String, dynamic> toJson() => {
    'title': title,
    'director': director,
    'year': year
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Movie && runtimeType == other.runtimeType &&
              title == other.title && director == other.director &&
              year == other.year;

  @override
  int get hashCode => title.hashCode ^ director.hashCode ^ year.hashCode;

  @override
  String toString() {
    return 'Movie{title: $title, director: $director, year: $year}';
  }

  Movie copyWith({
    String? title,
    String? director,
    int? year,
  }) {
    return Movie(
        title ?? this.title,
        director ?? this.director,
        year ?? this.year
    );
  }

  Future<Movie> getMovieInfo() async {
    await Future.delayed(Duration(seconds: 2));

    final String jsonString = '''{
      "title": "Star Ward",
      "director": "George Lucas",
      "year": 1977
    }''';

    return Movie.fromJson(jsonDecode(jsonString));
  }
}