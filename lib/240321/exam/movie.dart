import 'dart:convert';

class Movie {
  final String title;
  final String director;
  final int year;

  Movie(this.title, this.director, this.year);

// incoding class to json
  Map<String, dynamic> toJson() =>
      {'title': title, 'director': director, 'year': year};

//ecoing json to class
  Movie.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        director = json['director'],
        year = json['year'];

  Movie copyWith(String? title, String? director, int? year) {
    return Movie(
      title ?? this.title,
      director ?? this.director,
      year ?? this.year,
    );
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

  @override
  String toString() {
    return 'Movie{title: $title, director: $director, year: $year}';
  }
}

Future<Movie> getMovieInfo() async {
  // 2초 딜레이
  await Future.delayed(Duration(seconds: 2));

  //서버에서 들었오는 데이터라고 상상
  final String jsonString = '''{
      "title": "Star Wars",
      "director": "George Lucas",
      "year": 1977
}''';

  // json 형식을 객체로 변환(decoding)
  Map<String, dynamic> fileJson = jsonDecode(jsonString);
  // 변환 된 값에서 director만 추출 후 출력
  //  Movie title = fileJson['title'];
  //  Movie director = fileJson['director'];
  //  Movie year = fileJson['year'];
  Movie decodeMovie = Movie.fromJson(fileJson);
  // Movie 객체 생성 및 반환
  return decodeMovie;
}

Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

void main() async {
  String result = await timeoutFuture().timeout(Duration(seconds: 5), onTimeout: () {
    return 'timeout';
  });

  print(result);
}