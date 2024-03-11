import 'package:learn_dart_together/orm_240307/cleric.dart';
import 'package:test/test.dart';

void main(){
  test('cleric test', (){
    final cleric = Cleric('mandy', 50, 10);
    expect(cleric.hp, equals(20));
  });
}