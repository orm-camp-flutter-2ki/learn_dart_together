import 'package:learn_dart_together/240312/bird.dart';
import 'package:learn_dart_together/240312/cat.dart';
import 'package:learn_dart_together/240312/dog.dart';
import 'package:test/test.dart';

void main() {
  test('강아지', () {
    Dog dog = Dog('개');
    Cat cat = Cat('고양이');
    Bird bird = Bird('개');

    dog.smell();
    dog.sound();
    cat.sleep();
    cat.sound();
    bird.fly();
    bird.sound();
  });
}
