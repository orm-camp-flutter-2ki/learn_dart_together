class Movie {
  String title;
  String director;
  int year;

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

  Movie copyWith({String? title, String? director, int? year}) {
    return Movie(
      title: title ?? this.title,
      director: director ?? this.director,
      year: year ?? this.year,
    );
  }

  Map<String, dynamic> toJson() => {
    'title': title,
    'director': director,
    'year': year,
  };

  Movie.fromJson(Map<String, dynamic> json)
      : this(
    title: json['title'],
    director: json['director'],
    year: json['year'],
  );
}



