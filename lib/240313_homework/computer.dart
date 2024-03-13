import 'tangibleAsset.dart';

void main(){
  Computer com = Computer(name: '아이맥', price: 2000000, color: 'silver', makerName: 'Mac', weight: 4.2, modelYear: 2020);
  print(com.modelYear);
  print(com.moonWeight);
  com.asset();
}

class Computer extends TangibleAsset {
  int price;
  String color;
  String makerName;
  int _modelYear;

  @override
  int get modelYear => _modelYear;

  Computer({
    required super.name,
    required this.price,
    required this.color,
    required this.makerName,
    required super.weight,
    required int modelYear,
  }) : _modelYear = modelYear;
}
