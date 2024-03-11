
import 'package:test/test.dart';
import 'package:learn_dart_together/240311/wand.dart';

void main(){
  test(' wand test', () {
    Wand wand = Wand(name: '지팡', power: 10);

    // wand.name = 'a';
    wand.power =0.3;

  });
}