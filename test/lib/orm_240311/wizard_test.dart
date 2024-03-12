import 'package:learn_dart_together/orm_240311/wizard.dart';
import 'package:test/test.dart';

void main(){
  test('Wizard Test', (){
    Wizard wizard = Wizard( name: '이고', hp: 100, mp: 0);
    // wizard.mp = 20;
    // wizard.name = 'go';
  });

  test('Hp가 음수가 되면 -> 0으로 설정', (){
    Wizard wizard = Wizard( name: '이고', hp: 100, mp: 10);
    
    expect(() =>wizard.hp = -1 , returnsNormally);
    // expect(wizard, )
  });
 }