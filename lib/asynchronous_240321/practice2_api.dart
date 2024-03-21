import 'dart:convert';

class Movie {
  String title;
  String director;
  int year;

  Movie(this.title, this.director, this.year);

  //copyWith
  Movie copyWith({String? title, String? director, int? year}) {
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
        'tile': title,
        'director': director,
        'year': year,
      };

  //동등성 비교
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Movie &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          director == other.director &&
          year == other.year;

  //hashCode
  @override
  int get hashCode => title.hashCode ^ director.hashCode ^ year.hashCode;

  @override
  String toString() {
    return 'Employee{name: $title, age: $director, year: $year}';
  }
}

//비동기
Future<Movie> getMovieInfo() async {
  //await 먼저하고 가실게요.
  await Future.delayed(Duration(seconds: 2));
  //서버에서 들어오는 데이터 *String인 JSON코드
  String jsonString = '''{
      "title": "Star ward",
      "director": "George Lucas",
      "year": 1977
    }''';

  // TODO: Movie 데이터 클래스를 리턴하도록 작성
  // STEP1 / Decode하기 *String JSON코드를 Map형태로 파싱/변환
  Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  // STEP2 / fromJson*Map형태로 변환된 데이터를 사용하고자하는 생성자에 맞게 재변환
  return Movie.fromJson(jsonMap);
}

//비동기
void main() async {
  //await 먼저하고 가실게요.
  //REASON: getMovieInfo 함수 안에 2초 딜레이가 포함되어 있기에,
  //await를 추가하지 않으면, print가 먼저 실행됨으로 코드 작성 시 빨간줄 생성.
  final movie = await getMovieInfo();
  print(movie.director);
}

// T.E.D.F
// toJson을 했으면 '당연히' jsonEncode 해야지.
// jsonDecode를 했으면 '당연히' fromJson으로 써먹어야지.