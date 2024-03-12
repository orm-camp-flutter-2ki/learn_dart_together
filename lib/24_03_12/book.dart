class Book {
  String title;
  String author;
  String genre;

  Book({
    required this.title,
    required this.author,
    required this.genre
  });

  void getInformation() {
    print('도서 정보 - 제목 : $title, 작가 : $author, 장르 : $genre');
  }
}