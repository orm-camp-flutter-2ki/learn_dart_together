import 'package:learn_dart_together/24_03_12/book.dart';

class Fiction extends Book {
  String subgenre;

  Fiction({
    required super.title,
    required super.author,
    required super.genre,
    required this.subgenre
  });

  @override
  void getInformation() {
    print('$title의 작가는 $author 입니다. 장르는 $genre 이고 $subgenre로도 분류 될 수 있습니다.');
  }
}