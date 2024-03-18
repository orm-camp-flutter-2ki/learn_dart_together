import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_18/enum.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_18/exercise.dart';
import 'package:test/test.dart';

KeyType keyType = KeyType.button;

void main(){
  test('instance test', (){
    //given(준비)
    // var safe = StrongBox();
    //when(실행)
    // safe.put(999);
    // //then(검증)
    // expect(safe.get(), equals(999));
  });

  test('get 실행 test', ()
  {
    //bdd
    String? result ;
    String germs = '금은보화';
    int checkCount = 0;
    int nullCount = 0;
    switch(keyType){
      case KeyType.button:
        checkCount = 10000;
        break;
      case KeyType.padlock:
        checkCount = 1024;
        break;
      case KeyType.finger:
        checkCount = 1000000;
        break;
      case KeyType.dial:
        checkCount = 30000;
    }

    var safe2 = StrongBox<String, KeyType>(germs, keyType);
    for (int i =0; i<checkCount; i++){
      var sol = safe2.get();
      if(sol == null){
        nullCount++;
      }
      if(sol != null){
        result = sol;
      }
    }

    expect(nullCount, equals(checkCount -1));
    expect(result, equals(germs));
  });
}