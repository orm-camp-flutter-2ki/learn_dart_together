import 'package:learn_dart_together/24_03_18/strong_box.dart';
import 'package:test/test.dart';

void main() {
  test('박스에 물건 넣고 padlock 으로 get 메소드 1025회 수행 ', () {
    StrongBox box = StrongBox(key: KeyType.padlock);
    box.put('물건');

    expect(box.get(), null); // 첫번째 시도 널의 반환

    for (int i = 0; i < 1025; i++) {
      box.get();                         //1025 번 시도
    }
    expect(box.get(), '물건'); //1025회를 시도한 후 물건 반환
  });
}
