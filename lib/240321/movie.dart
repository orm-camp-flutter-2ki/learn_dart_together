// Data Class 선언시 작업요소 6가지
//(toJson,fromJson.copyWith,operator,get,toString)

class Movie {
  //read only
  final String title;
  final String director;
  final int year;

  Movie(this.title, this.director, this.year);

// incoding class to json
  Map<String, dynamic> toJson() =>
      {'title': title, 'director': director, 'year': year};

//decoing json to class
  Movie.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        director = json['director'],
        year = json['year'];

  // 복사본 만들어서 값을 변경 한다, 왜 복사본 사용하는지는 flutter 에서 진행하면서 설명 하신다고함.
  // 일단, 변수가 없는 코드를 만들기 위해서 해당 데이터 클래스를 만드는 방법을 기본적으로 사용한다.
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
  String toString() {
    // TODO: implement toString
    return 'movie{title:$title, director:$director, year:$year}';
  }

  @override
  int get hashCode => title.hashCode ^ director.hashCode ^ year.hashCode;
}
