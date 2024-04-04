// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:learn_dart_together/240402/model/book.dart';
import 'package:learn_dart_together/240402/model/user.dart';

class CheckOutList {
  final User user;
  final Book book;

  CheckOutList({
    required this.user,
    required this.book,
  });

  CheckOutList copyWith({
    User? user,
    Book? book,
  }) {
    return CheckOutList(
      user: user ?? this.user,
      book: book ?? this.book,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'user': user.toJson(),
      'book': book.toJson(),
    };
  }

  factory CheckOutList.fromJson(Map<String, dynamic> map) {
    return CheckOutList(
      user: User.fromJson(map['user'] as Map<String, dynamic>),
      book: Book.fromJson(map['book'] as Map<String, dynamic>),
    );
  }

  @override
  String toString() => 'CheckOutList(user: $user, book: $book)';

  @override
  bool operator ==(covariant CheckOutList other) {
    if (identical(this, other)) return true;

    return other.user == user && other.book == book;
  }

  @override
  int get hashCode => user.hashCode ^ book.hashCode;
}
