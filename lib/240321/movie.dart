class Movie {
  String title;
  String director;
  int year;

  Movie(
    this.title,
    this.director,
    this.year,
  );

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

  Map<String, dynamic> toJson() => {
        'title': title,
        'director': director,
        'year': year,
      };

  static Future<Movie> init(Map<String, dynamic> json) async {
    return Movie.from(json);
  }

  Movie.from(Map<String, dynamic> json)
      : title = json['title'],
        director = json['director'],
        year = json['year'];

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
}
