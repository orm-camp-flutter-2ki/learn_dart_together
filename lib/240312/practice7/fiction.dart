import 'package:learn_dart_together/240312/practice7/book.dart';

class Fiction extends Book {
  String subgenre;

  Fiction({
    required super.title,
    required super.author,
    required super.genre,
    required this.subgenre
  });

  @override
  void read() {
    super.read();
    print('이 책은 소설이네요.');
  }
}