class Book {
  String title;
  String author;
  String genre;

  Book({required this.title, required this.author, required this.genre});
}

class Fiction extends Book{
  String subgenre;

  Fiction({required this.subgenre, required super.title, required super.author, required super.genre});
}

class NonFiction extends Book {
  String subject;

  NonFiction({required this.subject, required super.title, required super.author, required super.genre});

}