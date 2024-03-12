import 'package:learn_dart_together/orm_240311/wand.dart';
import 'package:test/test.dart';

void main(){
  test('Wand Test', (){
    Wand wand = Wand( name: 'Staff', power: 0.1);
    // wand.name = 'dl';
    // print('${wand.power}');
    wand.power -= -12;
    print('${wand.power}');
    expect(wand.power, equals(123));
  });
}