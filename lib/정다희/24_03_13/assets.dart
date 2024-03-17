
import 'thing.dart';

abstract class Assets{
  String name;
  int code;
  String purchaseDate;
  int purchasePrice;
  String category;

  Assets(this.name, this.code, this.purchaseDate, this.category, this.purchasePrice);

  void disposeAsset();
}

class TangibleAsset extends Assets implements Thing{
  String location;
  double _weight;
  // TangibleAsset(super.name, super.code, super.purchaseDate, super.purchasePrice, super.category, this.location, this._weight);
  // 매개변수와 필드이름이 정확히 일치할때만 사용할 수 있다.
  // this 키워드는 현재 인스턴스의 필드를 참조할때 사용되며(현재 객체가 가지고있는 필드나 메소드를 참조), 필드를 직접 참조하는 방식은
  // 생성자의 매개변수 리스트에서는 허용되지 않기 때문.
  // _weight 필드를 초기화 하는 올바른 방법은 초기화 리스트를 사용하는것.

  // 게터세터 변형이 필요없을때는 이렇게 쓰면 된다.
  // @override
  // double weight
  TangibleAsset( super.name, super.code, super.purchaseDate, super.purchasePrice, super.category, this.location, double weight):_weight=weight;
  @override
  void disposeAsset() {
    print("유형자산 파기됨");
    // TODO: implement disposeAsset
  }

  @override
  double get weight => _weight;

  @override
  set weight(double newWeight){
    _weight = newWeight;
  }



}

class IntangibleAsset extends Assets{
}

class Computer extends TangibleAsset{
}

class Book extends TangibleAsset {
}

class patent extends IntangibleAsset {
}