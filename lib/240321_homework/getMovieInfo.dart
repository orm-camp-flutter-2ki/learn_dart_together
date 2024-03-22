import 'dart:convert';

void main() async {
  Stopwatch stopwatch = Stopwatch();
  stopwatch.start();
  Movie movieInfo = await getMovieInfo();
  String director = movieInfo.director;
  print('director:$director');
  stopwatch.stop();
  print(
      'getMovieInfo 함수는 ${stopwatch.elapsed.toString().substring(5)}초가 걸렸습니다.');
}

Future<Movie> getMovieInfo() async {
  //TODO: 2초동안 기다리는 코드 작성
  await Future.delayed(const Duration(seconds: 2));

  //서버에서 들어오는 데이터라고 상상
  final String jsonstring = '''{
  "title": "Star Ward",
  "director": "George Lucas",
  "year": 1977
  }''';

  Map<String, dynamic> dataMap = jsonDecode(jsonstring);
  Movie movie = Movie(dataMap['title'], dataMap['director'], dataMap['year']);
  //to jason
//TODO: Movie 데이터 클래스를 리턴하도록 작성
  return movie;
}

class Movie {
  String title;
  String director;
  int year;

  Movie(this.title, this.director, this.year);

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
}
