class Movie {
  final num id;
  final String originalTitle;
  final String title;
  final String releaseDate;
  final bool adult;

  Movie({
    required this.id,
    required this.originalTitle,
    required this.title,
    required this.releaseDate,
    required this.adult,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'original_title': originalTitle,
        'title': title,
        'release_date': releaseDate,
        'adult': adult,
      };

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'] ?? 0,
      originalTitle: json['original_title'] ?? '',
      title: json['title'] ?? '',
      releaseDate: json['release_date'] ?? '',
      adult: json['adult'] ?? false,
    );
  }

  @override
  String toString() {
    return 'Movie{id: $id, originalTitle: $originalTitle, title: $title, releaseDate: $releaseDate, adult: $adult}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Movie &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          originalTitle == other.originalTitle &&
          title == other.title &&
          releaseDate == other.releaseDate &&
          adult == other.adult;

  @override
  int get hashCode =>
      id.hashCode ^
      originalTitle.hashCode ^
      title.hashCode ^
      releaseDate.hashCode ^
      adult.hashCode;
}
