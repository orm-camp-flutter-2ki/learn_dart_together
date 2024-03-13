// Book 클래스 정의
class Book {
  String title;
  String author;
  String genre;

  Book(this.title, this.author, this.genre);
}

// Fiction 클래스 정의 - Book 클래스의 하위 클래스
class Fiction extends Book {
  String subgenre;
  Fiction(super.title, super.author, super.genre, this.subgenre);
}

// NonFiction 클래스 정의 - Book 클래스의 하위 클래스
class NonFiction extends Book {
  String subject;
  NonFiction(super.title, super.author, super.genre, this.subject);
}

void main() {
  // Fiction 객체 생성 및 초기화
  Fiction fictionBook = Fiction('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 'Romance');
  // NonFiction 객체 생성 및 초기화
  NonFiction nonFictionBook = NonFiction('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'History', 'Human Evolution');
  // 출력
  print('Fiction Book: ${fictionBook.title} by ${fictionBook.author}, Genre: ${fictionBook.genre}, Subgenre: ${fictionBook.subgenre}');
  print('Non-Fiction Book: ${nonFictionBook.title} by ${nonFictionBook.author}, Genre: ${nonFictionBook.genre}, Subject: ${nonFictionBook.subject}');
}
