class Book {
  final String title;
  final String author;
  final String genre;

  Book(this.title, this.author, this.genre);

  @override
  String toString() => 'Book($title, $author, $genre)';
}
class Fiction extends Book {
  final String subgenre;

  Fiction(String title, String author, String genre, this.subgenre)
      : super(title, author, genre);

  @override
  String toString() => 'Fiction($title, $author, $genre, $subgenre)';
}
class NonFiction extends Book {
  final String subject;

  NonFiction(String title, String author, String genre, this.subject)
      : super(title, author, genre);

  @override
  String toString() => 'NonFiction($title, $author, $genre, $subject)';
}

void main() {
  Fiction fiction = Fiction(
      '반지의 제왕', 'J.R.R. Tolkien', 'Fantasy', 'Epic');
  NonFiction nonFiction = NonFiction(
      '동백꽃', '김유정', '로맨스',
      '풋풋한 사랑');

  print(fiction);
  print(nonFiction);
}
