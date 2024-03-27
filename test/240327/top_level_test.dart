

import 'package:test/test.dart';
import 'package:untitled2/240327/top_level.dart';

void main() {
  test('toplevel test', () {
    expect(toplevel('racecar'), true);
    expect(toplevel('hello'), false);
  });
}