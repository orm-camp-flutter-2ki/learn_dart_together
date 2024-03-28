import 'package:collection/collection.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('연습문제 3 - 가장 큰 두수 찾아서 더하기', () {
    //given
    final cal = calculator();
    //when

    //then
    expect(cal == 17, true);
  });
}

int calculator() {
  List<int> numList = [1, 7, 3, 5, 8, 9, 2];
  numList.sort(); // 오름차순으로 정렬
  int max1 = numList.max; // max 메서드 사용
  int max2 = numList[numList.length - 2]; // 정렬된 값 두번째=두번째로 큰 값

  final sum = max1 + max2; // 가장큰 값 + 두번째 큰 값
  return sum;
}
