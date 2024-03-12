class Book {
  String title;
  String author;
  String genre;

  Book({required this.title, required this.author, required this.genre});

  void read() {
    print('$title 책을 읽습니다.');
  }
}