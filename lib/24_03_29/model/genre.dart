class Genre {
  num id;
  String name;

  Genre({
    required this.id,
    required this.name,
  });

  @override
  String toString() {
    return 'Genre{id: $id, name: $name}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Genre &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
