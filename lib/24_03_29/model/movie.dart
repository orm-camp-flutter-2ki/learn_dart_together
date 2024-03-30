class Movie {
  final int id;
  final String title;
  final double popularity;
  final DateTime release_date;
  final double vote_average;

  const Movie({
    required this.id,
    required this.title,
    required this.popularity,
    required this.release_date,
    required this.vote_average,
  });

  @override
  String toString() {
    return 'Movie{id: $id, title: $title, popularity: $popularity, release_date: $release_date, vote_average: $vote_average}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Movie &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          popularity == other.popularity &&
          release_date == other.release_date &&
          vote_average == other.vote_average;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      popularity.hashCode ^
      release_date.hashCode ^
      vote_average.hashCode;
}
