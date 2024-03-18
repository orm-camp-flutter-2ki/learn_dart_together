import 'package:learn_dart_together/orm_240318/strongbox.dart';
import 'package:test/test.dart';

void main(){
  test('padlock', () {
    StrongBox box = StrongBox<String> (KeyType.padlock);
    box.put('gold bar');
    // 테스트 1. 1024번 반복했을때 결과
    for(int i = 0 ; i < 1024; i++){
      var bar = box.get();
      expect(bar, null);
    }
    // 테스트 2. 1025번 반복했을 때
    for(int i = 0 ; i < 1025; i++){
      var bar = box.get();
      expect(bar, 'gold bar');
    }
  });
  test('button', () {
    StrongBox box = StrongBox<String> (KeyType.button);
    box.put('gold bar');
    // 테스트 3. 10000번 반복했을때 결과
    for(int i = 0 ; i < 10000; i++){
      var bar = box.get();
      expect(bar, null);
    }
    // 테스트 4. 10001번 반복했을 때
    for(int i = 0 ; i < 10001; i++){
      var bar = box.get();
      expect(bar, 'gold bar');
    }
  });
  test('dial', () {
    StrongBox box = StrongBox<String> (KeyType.dial);
    box.put('gold bar');
    // 테스트 5. 30000번 반복했을때 결과
    for(int i = 0 ; i < 30000; i++){
      var bar = box.get();
      expect(bar, null);
    }
    // 테스트 6. 30001번 반복했을 때
    for(int i = 0 ; i < 30001; i++){
      var bar = box.get();
      expect(bar, 'gold bar');
    }
  });
  test('finger', () {
    StrongBox box = StrongBox<String> (KeyType.finger);
    box.put('gold bar');
    // 테스트 7. 1000000번 반복했을때 결과
    for(int i = 0 ; i < 1000000; i++){
      var bar = box.get();
      expect(bar, null);
    }
    // 테스트 8. 1000001번 반복했을 때
    for(int i = 0 ; i < 1000001; i++){
      var bar = box.get();
      expect(bar, 'gold bar');
    }
  });
}