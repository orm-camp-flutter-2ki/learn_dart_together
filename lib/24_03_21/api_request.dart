import 'dart:convert';

class Movie {
  String title;
  String director;
  int year;

  Movie({required this.title, required this.director, required this.year});

  Movie.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        director = json['director'],
        year = json['year'];

  Movie.copyWith(Movie origin)
      : title = origin.title,
        director = origin.director,
        year = origin.year;

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

  @override
  String toString() {
    return 'Movie{title: $title, director: $director, year: $year}';
  }

  Map<String, dynamic> toJson() =>
      {'title': title, 'director': director, 'year': year};
}

Future<Movie> getMovieInfo() async {
  final String jsonString =
      await Future.delayed(Duration(seconds: 2)).then((value) => '''{
    "title" : "Star Wars",
    "director": "George Lucas",
    "year": 1977
  }''');

  return Movie.fromJson(jsonDecode(jsonString));
}
