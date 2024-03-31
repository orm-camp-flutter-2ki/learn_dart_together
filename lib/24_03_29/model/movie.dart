class Movie {
  final num id;
  final String originalTitle;
  final String overview;
  final String title;
  final num voteAverage;
  final DateTime releaseDate;

//<editor-fold desc="Data Methods">
  const Movie({
    required this.id,
    required this.originalTitle,
    required this.overview,
    required this.title,
    required this.voteAverage,
    required this.releaseDate,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Movie &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          originalTitle == other.originalTitle &&
          overview == other.overview &&
          title == other.title &&
          voteAverage == other.voteAverage &&
          releaseDate == other.releaseDate);

  @override
  int get hashCode =>
      id.hashCode ^
      originalTitle.hashCode ^
      overview.hashCode ^
      title.hashCode ^
      voteAverage.hashCode ^
      releaseDate.hashCode;

  @override
  String toString() {
    return 'Movie{' +
        ' id: $id,' +
        ' originalTitle: $originalTitle,' +
        ' overview: $overview,' +
        ' title: $title,' +
        ' voteAverage: $voteAverage,' +
        ' releaseDate: $releaseDate,' +
        '}';
  }

  Movie copyWith({
    int? id,
    String? originalTitle,
    String? overview,
    String? title,
    num? voteAverage,
    DateTime? releaseDate,
  }) {
    return Movie(
      id: id ?? this.id,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      title: title ?? this.title,
      voteAverage: voteAverage ?? this.voteAverage,
      releaseDate: releaseDate ?? this.releaseDate,
    );
  }

//</editor-fold>
}
