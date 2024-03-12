class Book {
  String title;
  String author;
  String genre;

  Book(this.title, this.author, this.genre);

}

class Fiction extends Book {
  int totalSales;
  String mainCharacter;

  Fiction(super.title, super.author, super.genre, this.totalSales,
      this.mainCharacter);

  void summary() {
    print('이책의 제목은 $title 입니다.');
    print('이책의 작가는 $author 입니다.');
    print('이책의 장르는 $genre 입니다.');
    print('이책의 총 판매량은 $totalSales부 입니다.');
    print('이책의 주인공은 $mainCharacter 입니다.');
  }
}

class NonFiction extends Book {
  int totalSales;

  NonFiction(super.title, super.author, super.genre, this.totalSales);

  void summary() {

  }
}

void main() {
  Fiction fiction = Fiction('해리포터', 'J. K. Rowling', '판타지', 450000000, '해리포터');
  fiction.summary();

}
