import 'package:learn_dart_together/24_03_12/animal.dart';

class Bird extends Animal {
  Bird({
    required super.type,
    required super.sound,
  });

  void wingFlap(){
    print('$type이/가 날개를 푸드덕 거려요.');
  }

  void layEgg(){
    print('$type이/가 알을 낳아요. 끙차!');
  }

}
