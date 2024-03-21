// Data Class 선언시 작업요소 6가지
//(toJson,fromJson.copyWith,operator,get,toString)

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
  String toString() {
    // TODO: implement toString
    return 'movie{title:$title, director:$director, year:$year}';
  }

  @override
  int get hashCode => title.hashCode ^ director.hashCode ^ year.hashCode;
}
