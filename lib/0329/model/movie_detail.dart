class MovieDetail {

  final String tagline;
  final String title;
  final String overview;

//<editor-fold desc="Data Methods">
  const MovieDetail({
    required this.tagline,
    required this.title,
    required this.overview,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovieDetail &&
          runtimeType == other.runtimeType &&
          tagline == other.tagline &&
          title == other.title &&
          overview == other.overview);

  @override
  int get hashCode => tagline.hashCode ^ title.hashCode ^ overview.hashCode;

  @override
  String toString() {
    return 'MovieDetail{' +
        ' tagline: $tagline,' +
        ' title: $title,' +
        ' overview: $overview,' +
        '}';
  }

  MovieDetail copyWith({
    String? tagline,
    String? title,
    String? overview,
  }) {
    return MovieDetail(
      tagline: tagline ?? this.tagline,
      title: title ?? this.title,
      overview: overview ?? this.overview,
    );
  }

//</editor-fold>
}