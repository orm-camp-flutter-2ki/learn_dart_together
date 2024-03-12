class Book {
  String title;
  String author;
  String genre;

  Book(
    this.title,
    this.author,
    this.genre,
  );

  void read(){
    print('$author 작가의 $title을 읽었다.');
  }
}

class Fiction extends Book {
  String subgenre;

  Fiction(
    super.title,
    super.author,
    super.genre,
    this.subgenre,
  );
}

class NonFiction extends Book {
  String subject;

  NonFiction(
    super.title,
    super.author,
    super.genre,
    this.subject,
  );
}