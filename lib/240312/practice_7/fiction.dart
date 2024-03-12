import 'book.dart';

class Fiction extends Book {

  String subgenre;
  int series;
  bool isBestseller;

  Fiction(
      super.title, super.author, super.genre, super.pages, super.price,
      this.subgenre, this.series, this.isBestseller
      );

}