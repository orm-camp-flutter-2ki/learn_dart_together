class Book {
  String title;
  String author;
  String genre;

  Book(this.title, this.author, this.genre);
}

class Fiction extends Book {
  String subgenre;

  Fiction(super.title, super.author, super.genre, this.subgenre);
}

class NonFiction extends Book {
  String subject;

  NonFiction(super.title, super.author, super.genre, this.subject);
}
