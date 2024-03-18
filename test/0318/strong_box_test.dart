import 'package:learn_dart_together/0318/key_type.dart';
import 'package:learn_dart_together/0318/strong_box.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  /// padlock
  StrongBox padlockBox = StrongBox(keyType: KeyType.padlock);
  padlockBox.putDataType('1조');

  /// button
  StrongBox buttonBox = StrongBox(keyType: KeyType.button);
  buttonBox.putDataType('빌게이츠가 준 내 명의 땅');

  /// dial
  StrongBox dialBox = StrongBox(keyType: KeyType.dial);
  dialBox.putDataType('전용기');

  /// finger
  StrongBox fingerBox = StrongBox(keyType: KeyType.finger);
  fingerBox.putDataType('원피스');

  test('padlock을 사용했을 때 1024회 카운트 후 열리는지 테스트', () {
    final stopWatch = Stopwatch()..start(); // 시간측정 코드
    for (int i = 1; i < padlockCountLimit + 1; i++) {
      print('padlock $i회 : ${padlockBox.getKeyType()}');
    }
    expect(padlockBox.getKeyType() == '1조', true);
    // expect(padlockBox.getKeyType() != '1조', true); // error
    print(stopWatch.elapsed);
  });

  test('button을 사용했을 때 1024회 카운트 후 열리는지 테스트', () {
    final stopWatch = Stopwatch()..start();
    for (int i = 1; i < buttonCountLimit + 1; i++) {
      print('padlock $i회 : ${buttonBox.getKeyType()}');
    }
    expect(buttonBox.getKeyType() == '빌게이츠가 준 내 명의 땅', true);
    // expect(buttonBox.getKeyType() != '빌게이츠가 준 내 명의 땅', true); // error
    print(stopWatch.elapsed);
  });

  test('dial을 사용했을 때 1024회 카운트 후 열리는지 테스트', () {
    final stopWatch = Stopwatch()..start();
    for (int i = 1; i < dialCountLimit + 1; i++) {
      print('padlock $i회 : ${dialBox.getKeyType()}');
    }
    expect(dialBox.getKeyType() == '전용기', true);
    // expect(dialBox.getKeyType() != '전용기', true); // error
    print(stopWatch.elapsed);
  });

  test('finger을 사용했을 때 1024회 카운트 후 열리는지 테스트', () {
    final stopWatch = Stopwatch()..start();
    for (int i = 1; i < fingerCountLimit + 1; i++) {
      print('padlock $i회 : ${fingerBox.getKeyType()}');
    }
    expect(fingerBox.getKeyType() == '원피스', true);
    // expect(fingerBox.getKeyType() != '원피스', true); // error
    print(stopWatch.elapsed);
  });
}
