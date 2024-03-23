import 'dart:convert';

Future<Movie> getMovieInfo(String jsonString) async {
  // 2초 동안 기다리는 코드
  await Future.delayed(Duration(seconds: 2));

  final Map<String, dynamic> info = jsonDecode(jsonString);

  Movie movie = Movie.fromJson(info);

  // Movie 데이터 클래스 리턴
  return movie;
}

class Movie {
  final String title;
  final String director;
  final int year;

  Movie({required this.title, required this.director, required this.year});

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
    return 'Movie{title: $title}, {director: $director}, {year: $year}';
  }

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

  Movie.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        director = json['director'],
        year = json['year'];

  Map<String, dynamic> toJson() => {
        'title': title,
        'director': director,
        'year': year,
      };
}

void main() async {
  // 데이터 상상도
  final String jsonString = '''{
    "title": "Star Wars",
    "director": "George Lucas",
    "year": 1977
  }
  ''';

  final movieInfo = await getMovieInfo(jsonString);
  final List<String> infoList = movieInfo.toString().split(',');

  print(infoList[1]);
}
