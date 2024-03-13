abstract class TangibleAsset {
  String name;
  int price;
  String color;

  TangibleAsset(this.name, this.price, this.color);
}

class Book extends TangibleAsset {
  String isbn;

  Book(super.name, super.price, super.color, this.isbn,);


}


class Computer extends TangibleAsset {

  String makerName;

  Computer(this.makerName, super.name, super.price, super.color);
}

void main(){
  Computer myMac = Computer('사과', 'm1', 100,'회색');
  print(myMac.makerName);
}