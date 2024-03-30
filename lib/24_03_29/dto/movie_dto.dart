class MovieDto {
  final List<dynamic> results;

  MovieDto({required this.results});

  factory MovieDto.fromJson(Map<String, dynamic> json) {
    return MovieDto(
      results: json['results'],
    );
  }
}
