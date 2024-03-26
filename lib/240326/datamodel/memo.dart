class Memo {
  int id;
  String content;

  Memo(this.id, this.content);

  @override
  String toString() {
    return '$content';
  }
}
