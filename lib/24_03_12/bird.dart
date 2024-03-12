import 'animal.dart';

class Bird extends Animal{

  Bird(super.type);

  @override
  void sound(){
    print('짹짹');
  }


}