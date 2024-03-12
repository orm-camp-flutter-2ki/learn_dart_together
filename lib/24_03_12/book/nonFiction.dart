import 'package:learn_dart_together/24_03_12/book/book.dart';

class NonFiction extends Book{

  String subgenre;

  NonFiction(super.title, super.author, super.genre, this.subgenre);

  void information() {
    print('$title의 저자는 $author이고 장르는 $genre, $subgenre입니다.}');
  }
}