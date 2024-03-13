import 'package:learn_dart_together/240312/book.dart';

class Fiction extends Book {
  String subgenre = '인문학';

  Fiction(super.title, super.author, super.genre);

  @override
  void read() {
    print('책을 읽었다!');
    print('책제목:$title, 저자:$author, 장르:$genre, 서브장르:$subgenre');
  }
}
