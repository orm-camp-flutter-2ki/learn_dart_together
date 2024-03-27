import 'package:learn_dart_together/240327/listfun.dart';
import 'package:test/test.dart';

void main() {
  test('practice1', () {
    List<int> list = [1, 2, 5, 3, 9, 8];
    expect(listFun(list), 17);
  });
}
