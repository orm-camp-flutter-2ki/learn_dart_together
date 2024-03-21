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
  final String title;
  final String director;
  final int year;

  Movie(this.title, this.director, this.year);

  Movie copyWith({
    String? title,
    String? director,
    int? year,
  }) {
    return Movie(
      title ?? this.title,
      director ?? this.director,
      year ?? this.year,
    );
  }

  Movie.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        director = json['director'],
        year = json['year'];

  Map<String, dynamic> toJson() => {
        'title': title,
        'director': director,
        'year': year,
      };

  @override
  String toString() {
    return 'Movie{_title: $title, _director: $director, _year: $year}';
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
}

void main() async{
  Movie m = await getMovieInfo();
  print(m.director);
}