class Movie {
  final String title;
  final String director;
  final int year;

  Movie({
    required this.title,
    required this.director,
    required this.year,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Movie && other.title == title;
  }

  @override
  int get hashCode => title.hashCode;

  @override
  String toString() {
    return '영화 제목: $title, 영화 감독: $director, 개봉 년도: $year';
  }

  Movie copyWith({
    String? title,
    String? director,
    int? year,
  }) {
    return Movie(
      title: title ?? this.title,
      director: director ?? this.director,
      year: year ?? this.year,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'director': director,
      'year': year,
    };
  }

  Movie.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        director = json['director'],
        year = json['year'];
}
