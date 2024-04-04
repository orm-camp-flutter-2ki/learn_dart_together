class Book {
  String _title;
  String _author;
  String _isbn;
  int _publicationYear;

  // Book 클래스의 생성자
  Book(this._title, this._author, this._isbn, this._publicationYear);

  // Getter 메서드
  String get title => _title;
  String get author => _author;
  String get isbn => _isbn;
  int get publicationYear => _publicationYear;

  // Setter 메서드
  set title(String newTitle) {
    _title = newTitle;
  }

  set author(String newAuthor) {
    _author = newAuthor;
  }

  set isbn(String newIsbn) {
    _isbn = newIsbn;
  }

  set publicationYear(int newYear) {
    _publicationYear = newYear;
  }

  // 책 정보를 문자열로 반환하는 메서드
  @override
  String toString() {
    return 'Title: $_title, Author: $_author, ISBN: $_isbn, Publication Year: $_publicationYear';
  }
}
