import 'package:learn_dart_together/24_03_12/animal.dart';

class Dog extends Animal {
  Dog({
    required super.type,
    required super.sound,
  });

  void digGround() {
    print('$type 이/가 땅을 파요. 팍팍팍!!');
  }

  void sniff() {
    print('$type 이/가 냄새를 맡아요. 킁킁킁!!');
  }
}
