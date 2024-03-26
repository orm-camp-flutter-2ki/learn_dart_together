class Memo {
  static int count = 0;
  String content;
  int id;

  Memo(this.content) : id = count++;

  @override
  String toString() {
    return 'Memo{content: $content, id: $id}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Memo &&
          runtimeType == other.runtimeType &&
          content == other.content &&
          id == other.id;

  @override
  int get hashCode => content.hashCode ^ id.hashCode;
}
