import 'dart:convert';

Future<Movie> getMovieInfo() async {
  // TODO: 2초동안 기다리는 코드 작성
  final delayed = await Future.delayed(Duration(seconds: 2));

  // 서버에서 들어오는 데이터라고 상상
  final String jsonString = '''{
  "title": "Star Wars",
  "director": "George Lucas",
  "year": 1977}
  ''';

  Map<String, dynamic> decodedJson = jsonDecode(jsonString);

  print('Director는 ${decodedJson['director']}입니다.');

  // TODO: Movie 데이터 클래스를 리턴하도록 작성
  return Movie();
}

class Movie {
//   String title;
//   String director;
//   int year;
//
//   Movie(this.title, this.director, this.year);
//
//   Movie.fromJson(Map<String, dynamic> json)
//       : title = json['title'],
//         director = json['director'],
//         year = json['year'];
//
//   @override
//   String toString() {
//     return 'Movie{title: $title, director: $director, year: $year}';
//   }
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//           other is Movie &&
//               runtimeType == other.runtimeType &&
//               title == other.title &&
//               director == other.director &&
//               year == other.year;
//
//   @override
//   int get hashCode => title.hashCode ^ director.hashCode ^ year.hashCode;
//
}

void main() {
  // Movie 인스턴스 생성
  // Movie movie = Movie('Star Wars', 'George Lucas', 1977);
  getMovieInfo();
}
