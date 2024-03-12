import 'package:learn_dart_together/24_03_12/book/book.dart';

class Fiction extends Book{

  String subgenre;

  Fiction(super.title, super.author, super.genre, this.subgenre);

  void information() {
    print('$title의 저자는 $author이고 장르는 $genre, $subgenre입니다.}');
  }
}