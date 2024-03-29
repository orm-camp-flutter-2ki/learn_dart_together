class BelongsToCollection {
  num? id;
  String? name;
  String? posterPath;
  String? backdropPath;

  BelongsToCollection({
    this.id,
    this.name,
    this.posterPath,
    this.backdropPath,
  });

  @override
  String toString() {
    return 'BelongsToCollection{id: $id, name: $name, posterPath: $posterPath, backdropPath: $backdropPath}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BelongsToCollection &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          posterPath == other.posterPath &&
          backdropPath == other.backdropPath;

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ posterPath.hashCode ^ backdropPath.hashCode;
}
