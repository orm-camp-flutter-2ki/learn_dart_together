import 'animal.dart';

class Bird extends Animal {
  Bird(super.type);

  bool? _isflying;


  get isflying =>  _isflying;

  @override
  void sound() {
    print('짹짹');
  }

  void flying() {
    print('날았습니다.');
    _isflying = true;
  }

  void notFlying() {
    print('내렸습니다.');
    _isflying = false;
  }
}
