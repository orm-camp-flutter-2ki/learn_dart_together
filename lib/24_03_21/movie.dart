import 'dart:convert';
import 'dart:io';

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

  @override
  String toString() {
    return '1'; // 임시
  }

  @override
  int get hashCode {
    return title.hashCode ^ director.hashCode ^ year.hashCode;
  }

  @override
  bool operator ==(Object other) {
    return other is Movie &&
        title == other.title &&
        director == other.director &&
        year == other.year &&
        identical(this, other);
  }
}

Future<Movie> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));

  final String jsonString = '''{  
"title": "Star Ward",
"director": "George Lucas",
"year":1977}''';

  return Movie.fromJson(jsonDecode(jsonString));
}
