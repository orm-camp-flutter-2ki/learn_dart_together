import 'dart:convert';

Future<Movie> getMovieInfo() async {
// TODO: 2초동안 기다리는 코드 작성

  await Future.delayed(Duration(seconds: 2));
//섰벗에서 들었오는 데이터라고 상상
  final String jsonString = '''{
  "title": "Star Ward",
"director": "George-Lucas" ,
"year": 1977
}''';

  final data = jsonDecode(jsonString);
  // 중복된 코드 변경하기
  final movie = Movie.fromJson(data);
// TODO: Movie 데이터 클래스를 리턴하도록 작성
  print(movie.director);
  return movie;
}

void main() async {
  print(await getMovieInfo());
}

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
        "title": title,
        "director": director,
        "year": year,
      };

  @override
  String toString() {
    return 'Movie{title: $title, director:$director, year:$year}';
  }

  Movie CopyWith() {
    return Movie(title, director, year);
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
