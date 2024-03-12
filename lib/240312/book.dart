void main() {
  Fiction fiction = Fiction('엄마는 외계인', '베라', 'SF', '미스테리');
  NonFiction nonFiction = NonFiction('Java를 잡아라', '엄준식', '자기계발서', 'IT');
  print(fiction);
  print(nonFiction);
}

class Book {
  String title;
  String author;
  String genre;

  Book(this.title, this.author, this.genre);

  void summary() {}
}

class Fiction extends Book {
  //주인공
  String subgenre;

  Fiction(super.title, super.author, super.genre, this.subgenre);
}

class NonFiction extends Book {
  //토탈세일즈
  String subject;

  NonFiction(super.title, super.author, super.genre, this.subject);
}
