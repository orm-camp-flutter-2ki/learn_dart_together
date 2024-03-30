class MovieInfo {
  final String? title;
  final String? overview;

  const MovieInfo({
    required this.title,
    required this.overview,
  });

  factory MovieInfo.fromJson(Map<String, dynamic> json) {
    return MovieInfo(
      title: json['title'],
      overview: json['overview'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'title': title,
      'overview': overview,
    };
  }

  MovieInfo copyWith({
    String? title,
    String? overview,
  }) {
    return MovieInfo(
      title: title ?? this.title,
      overview: overview ?? this.overview,
    );
  }

  @override
  String toString() => 'MovieInfo(title: $title, overview: $overview)';

  @override
  bool operator ==(covariant MovieInfo other) {
    if (identical(this, other)) return true;

    return other.title == title && other.overview == overview;
  }

  @override
  int get hashCode => title.hashCode ^ overview.hashCode;
}
