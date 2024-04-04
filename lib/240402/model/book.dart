// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'book.freezed.dart';
// part 'book.g.dart';
//
// @freezed
// class Book with _$Book {
//   const factory Book(
//       {required String name,
//       required String author,
//       required DateTime releaseDate,
//       required List<Book> books,
//       required bool isRented}) = _Book;
//
//   factory Book.fromJson(Map<String, Object?> json) => _$BookFromJson(json);
// }

class Book {
  //책의 정보를 담는 클래스?
  String name;
  String author;
  DateTime releaseDate;
  List<Book> books;
  bool isRented;

  Book.name(
      this.name, this.author, this.releaseDate, this.books, this.isRented);

  @override
  String toString() {
    return 'Book{name: $name, author: $author, releaseDate: $releaseDate, books: $books, isRented: $isRented}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          author == other.author &&
          releaseDate == other.releaseDate &&
          books == other.books &&
          isRented == other.isRented;

  @override
  int get hashCode =>
      name.hashCode ^
      author.hashCode ^
      releaseDate.hashCode ^
      books.hashCode ^
      isRented.hashCode;
}
