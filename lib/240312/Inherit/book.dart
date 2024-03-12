class Book {
  String title;
  String author;
  String genre;

  Book(this.title, this.author, this.genre);

  void read() {
    print('$author 가 쓴 $title을 읽습니다.');
  }
}
