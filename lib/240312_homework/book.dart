void main() {
  Fiction fiction = Fiction('엄마는 외계인', '베라', 'SF', '미스테리', '엄마');
  NonFiction nonFiction = NonFiction('Java를 잡아라', '엄준식', '자기계발서', 'IT', 7000);
  fiction.summary();
  nonFiction.summary();
}

class Book {
  String title;
  String author;
  String genre;

  Book(this.title, this.author, this.genre);

  void summary() {
    print("이 책의 제목은 '$title' 이다.'$author'에 의해 작성되었으며 $genre이다.");
  }
}

class Fiction extends Book {
  String subgenre;
  String hero;

  Fiction(super.title, super.author, super.genre, this.subgenre, this.hero);

  @override
  void summary() {
    super.summary();
    print("주인공 '$hero'의 이야기 이다.");
  }
}

class NonFiction extends Book {
  String subject;
  int totalSales;

  NonFiction(
    super.title,
    super.author,
    super.genre,
    this.subject,
    this.totalSales,
  );

  @override
  void summary() {
    super.summary();
    print("약 $totalSales부가 팔렸다.");
  }
}
