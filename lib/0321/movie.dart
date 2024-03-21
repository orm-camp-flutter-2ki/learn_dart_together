class Movie {
  final String title;
  final String director;
  final int year;

  Movie({required this.title, required this.director, required this.year});

  @override
  String toString() {
    return '[$title] 개봉일:$year년 감독:$director';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Movie &&
          title == other.title &&
          director == other.director &&
          year == other.year;

  @override
  // TODO: implement hashCode
  int get hashCode => title.hashCode ^ director.hashCode ^ year.hashCode;

  Future<Map<String, dynamic>> toJson() async =>
      {'title': title, 'director': director, 'year': year};

  Movie.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        director = json['director'],
        year = json['year'];

  Future<Movie> copyWith(
      {required String? title,
      required String? director,
      required int? year}) async {
    return Movie(
        title: title ?? this.title,
        director: director ?? this.director,
        year: year ?? this.year);
  }
}
