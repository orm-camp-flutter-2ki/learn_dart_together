import 'package:learn_dart_together/24_03_18/strong_box.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main(){
  test('인스턴스 타입 미정', () {
    // given
    StrongBox box = StrongBox();

    // when
    box.put('a');
    final inside = box.get();

    // then
    expect(inside, 'a');
  });
}