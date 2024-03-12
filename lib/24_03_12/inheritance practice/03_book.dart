class Book {
  String title;
  String author;
  String genre;
  Book(this.title, this.author, this.genre);
}

class Fiction extends Book {
  String subgenre;
  Fiction(String title, String author, String genre, this.subgenre)
      : super(title, author, genre);
}

class NonFiction extends Book {
  String subject;
  NonFiction(String title, String author, String genre, this.subject)
      : super(title, author, genre);
}
