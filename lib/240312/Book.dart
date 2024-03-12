class Book {
  String title;
  String author;
  String genre;

  Book(this.title, this.author, this.genre);

  void read() {
    print('책을 빌렸다!');
  }
}
