import 'dart:convert';
/// 다음과 같은 영화 정보 Json 을 반환하는 함수가 있다. (async - await 사용할 것)
/// 함수를 완성하고 director 가 누군지 출력해 보시오.
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

void main() async{
  Movie m = await getMovieInfo();
  print(m.director);
}