class Book {
  String _title;
  String _author;
  String _genre;

  Book(this._title, this._author, this._genre);
}

class NonFiction extends Book {
  String _subGenre;

  NonFiction(super.title, super.author, super.genre, this._subGenre);
}

class Fiction extends Book {
  String _subject;

  Fiction(super.title, super.author, super.genre, this._subject);
}
