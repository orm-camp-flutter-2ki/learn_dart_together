import 'package:learn_dart_together/24_03_12/ex5.%20book/book.dart';

class NonFiction extends Book {
  String subject;

  NonFiction({required super.title, required super.author, required super.genre, required this.subject});
  // NonFiction({required this.subject}): super(author: '조앤 k 롤링', title: '해리포터', genre: '판타지');
}