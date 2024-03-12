import 'package:learn_dart_together/0312/book.dart';

class Fiction extends Book {
  String character;
  String genre;

  Fiction({
    required super.title,
    required super.author,
    required super.contents,
    required this.genre,
    required this.character,
  });

  @override
  void bookInfo() {
    bookInfo();
    print('[Fiction 정보] 장르:$genre 등장인물:$character');
  }
}
