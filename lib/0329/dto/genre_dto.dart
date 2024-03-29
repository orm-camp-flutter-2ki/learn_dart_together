class GenreDto {

  final int id;
  final String name;

  const GenreDto({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory GenreDto.fromJson(Map<String, dynamic> map) {
    return GenreDto(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}