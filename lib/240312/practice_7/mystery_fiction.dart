import 'fiction.dart';

class Mystery extends Fiction {

  String background;

  Mystery(super.title, super.author, super.genre,
          super.pages, super.price, super.subgenre,
          super.series, super.isBestseller, this.background);

}