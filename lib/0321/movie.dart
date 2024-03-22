class Movie {
  final String title;
  final String director;
  final int year;

  Movie({required this.title, required this.director, required this.year});

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

  Map<String, dynamic> toJson() => // 함수
      {'title': title, 'director': director, 'year': year};

  Movie.fromJson(Map<String, dynamic> json) // 생성자
      : title = json['title'],
        director = json['director'],
        year = json['year']; // 이니셜라이즈 리스트

  Movie copyWith(
      {required String? title, required String? director, required int? year}) {
    return Movie(
        title: title ?? this.title,
        director: director ?? this.director,
        year: year ?? this.year);
  }
}
