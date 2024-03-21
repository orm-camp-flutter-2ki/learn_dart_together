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
        'year': year,
      };


  Future<Movie> getMovieInfo(String data) async {
    // 2초 기다린다.
    await Future.delayed(Duration(seconds: 2));

    Map<String, dynamic> dataDecode = jsonDecode(data);

    String title = dataDecode['title'];
    String director = dataDecode['director'];
    int year = dataDecode['year'];

    return Movie(title, director, year);
  }


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
}
