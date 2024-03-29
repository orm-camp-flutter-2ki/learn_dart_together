class MovieDetail {
  final int id;
  final String overview;
  final String releaseDate;
  final String title;
  final double voteAverage;

//<editor-fold desc="Data Methods">
  const MovieDetail({
    required this.id,
    required this.overview,
    required this.releaseDate,
    required this.title,
    required this.voteAverage,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovieDetail &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          overview == other.overview &&
          releaseDate == other.releaseDate &&
          title == other.title &&
          voteAverage == other.voteAverage);

  @override
  int get hashCode =>
      id.hashCode ^
      overview.hashCode ^
      releaseDate.hashCode ^
      title.hashCode ^
      voteAverage.hashCode;

  @override
  String toString() {
    return 'MovieDetail{ id: $id, overview: $overview, releaseDate: $releaseDate, title: $title, voteAverage: $voteAverage,}';
  }

  MovieDetail copyWith({
    int? id,
    String? overview,
    String? releaseDate,
    String? title,
    double? voteAverage,
  }) {
    return MovieDetail(
      id: id ?? this.id,
      overview: overview ?? this.overview,
      releaseDate: releaseDate ?? this.releaseDate,
      title: title ?? this.title,
      voteAverage: voteAverage ?? this.voteAverage,
    );
  }

//</editor-fold>
}
