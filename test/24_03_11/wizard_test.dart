import 'package:learn_dart_together/24_03_11/wand.dart';
import 'package:learn_dart_together/24_03_11/wizard.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main(){
  test('  ', () {
    Wand wand = Wand(name: 'name3', power: 100);
    Wizard wizard = Wizard(name: '춘식', hp: 50, mp: 60, wand: wand);




  });

}